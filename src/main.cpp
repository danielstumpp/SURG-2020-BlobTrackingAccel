/*
	Nikolaus Salvatore
*/

#include "TrackerPool.h"
#include "GaussianTracker.h"
#include "videoout.h"
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <cmath>
#include "omp.h"
using namespace std;
using namespace cv;

void drawTrackers(TrackerPool tracker_pool,Mat &frame,int time,int frameWidth, int frameHeight)
{
    #pragma omp parallel for
    for (int i= 0; i< POOL_SIZE;i++){
      if(tracker_pool.trackerPool[i].isActive() && tracker_pool.trackerPool[i].a>0 && tracker_pool.trackerPool[i].b >0){

        (tracker_pool.trackerPool[i].a > tracker_pool.trackerPool[i].b) ? drawBlobTracker(frame,tracker_pool.trackerPool[i].predX,tracker_pool.trackerPool[i].predY,tracker_pool.trackerPool[i].a,tracker_pool.trackerPool[i].b,tracker_pool.trackerPool[i].alpha) : \
                          drawBlobTracker(frame,tracker_pool.trackerPool[i].predX,tracker_pool.trackerPool[i].predY,tracker_pool.trackerPool[i].b,tracker_pool.trackerPool[i].a,tracker_pool.trackerPool[i].alpha);

        double projectA[2];
        tracker_pool.trackerPool[i].smoothPredict(projectA,tracker_pool.trackerPool[i].lastTimeStamp + 3000);
        int* collisions = tracker_pool.detectCollisions(tracker_pool.trackerPool,tracker_pool.trackerPool[i],i,projectA);
        for (int i = 0; i < POOL_SIZE;i++)
          if (collisions[i] == 1){
            markCollision(frame,projectA[0],projectA[1]);
          }

        //Draw line between current position and predicted next location
        cv::line(frame,Point(tracker_pool.trackerPool[i].predX,tracker_pool.trackerPool[i].predY),Point(projectA[0],projectA[1]),Scalar(0,0,255),1);

      	//Fit Bezier curve, then draw
        tracker_pool.bezier(tracker_pool.trackerPool[i].prevX,tracker_pool.trackerPool[i].predX,tracker_pool.trackerPool[i].prevY,tracker_pool.trackerPool[i].predY,0.1,M_PI/8,i);
        drawTrajectory(frame,tracker_pool.trajXPts,tracker_pool.trajYPts,i);
        tracker_pool.removePts(3,i);
        free(collisions);
      }
      else
        tracker_pool.removePts(tracker_pool.trajXPts.size(i),i);
    }
}

int main(int argc, char * argv[])
{
  if (!argv[1]){
  	cout << "No input file chosen." << endl;
    cout << "Usage: (Input File) (Filter Threshold) (# of Blobs) (Blob Activation Threshold) (Starting Blob Size) (Shape Update) (Position Update) (Smoothing Factor) (Integration Time)" << endl;
  	return -1;
  }
  if (!argv[2]){
  	cout << "No filter threshold chosen." << endl;
  	return -1;
  }
  if (!argv[3]){
  	cout << "Number of blobs not specified. (-1 for no limit)" << endl;
  	return -1;
  }
  if (!argv[4]){
  	cout << "Event threshold for blob activation not chosen." << endl;
  	return -1;
  }
  if (!argv[5]){
  	cout << "Starting blob size not chosen." << endl;
  	return -1;
  }
  if (!argv[6]){
  	cout << "No blob shape update factor chosen." << endl;
  	return -1;
  }
  if (!argv[7]){
  	cout << "No blob position update factor chosen." << endl;
  	return -1;
  }
  if (!argv[8]){
  	cout << "No smoothing factor chosen." << endl;
  	return -1;
  }
  if (!argv[9]){
  	cout << "No integration time chosen. (milliseconds)" << endl;
  	return -1;
  }

	//Read in event data from file/camera stream
  ifstream file(argv[1]);
  const char delim = ' ';
  int param = 0, last_frame=0;
  int frameWidth = 640;
  int frameHeight = 480;
  VideoWriter video("collisionPrediction.avi",CV_FOURCC('M','J','P','G'),25,
		Size(frameWidth,frameHeight));
  
  Mat frame = Mat::zeros(Size(frameWidth, frameHeight), CV_8UC3);

  //Initialize pool of Gaussian trackers
  TrackerPool tracker_pool;
  tracker_pool.numClusters = stoi(argv[3]);
  tracker_pool.numActive = stoi(argv[4]);
  tracker_pool.numInactive = 0.5*stoi(argv[4]);
  tracker_pool.numFree = 0.1*stoi(argv[4]);
  tracker_pool.sigmaX = stoi(argv[5]);
  tracker_pool.sigmaY = stoi(argv[5]);
  tracker_pool.shapeFactor = stof(argv[6]);
  tracker_pool.posFactor = stof(argv[7]);
  tracker_pool.smoothingFactor = stof(argv[8]);

  //DBS Paramaters
  int horizCells = 64;
  int vertCells = 48;
  int numCells = horizCells*vertCells;
  vector<ActivityCell*> cells;
  for (int i =0;i<numCells;i++) {
    ActivityCell* act = new ActivityCell();
    cells.push_back(act);
  }
  int frameSize = frameHeight*frameWidth;
  int cellWidth = frameWidth/horizCells;
  int cellHeight = frameHeight/vertCells;
  double cellMax = cellHeight*cellWidth;
  double spikeRateFactor = 1000;
  //Event buffer for optical flow
  vector<int> pixels(frameSize);

  double filtThreshold = stof(argv[2]);
  int intTime = stoi(argv[9]);
  double currActivity = 0.0;
  int frameCounter = 0;
  
  int x,y,time,polarity;
  int max = 0;
	string line;
	if (file) {
      while (file.peek() != EOF){
          file >> line;
          switch(param){
            case 0:
              x = stoi(line);
              break;
            case 1:
              y = stoi(line);
              break;
            case 2:
              time = stoul(line);
              break;
            case 3:
              polarity = stoi(line);
              break;
          }
          param++;
          if(param==4){
            int frameNum = (int)time/(intTime*1000);;
            //Locate and update appropriate activity cell
            int cellNum = (x/cellWidth) + (y/cellHeight)*horizCells;
            
            currActivity = cells[cellNum]->addEvent(time,spikeRateFactor);
            pixels[y*frameWidth+x] = time;

            //Only track events that don't fall into a filtered frame
            //Thresholding uses a lower bound with respect to average activity in all cells
            //Overall event counter is incremented if no events are updated for tracker activity decay
            if (currActivity >= filtThreshold){
              tracker_pool.update(x,y,time,frameWidth,frameHeight,&pixels);
              addToFrame(x,y,polarity,frame);
            }
          	else
              tracker_pool.incrementEvents(time);
              
            
            //Draw blob trackers on output before moving to next frame
            if (frameNum != last_frame){
              drawTrackers(tracker_pool,frame,time,frameWidth,frameHeight);
              video.write(frame);
              frame = Mat::zeros(Size(frameWidth, frameHeight), CV_8UC3);
              last_frame = frameNum;
              fprintf(stderr,"Chugging along on frame %d.\n",frameCounter);
              frameCounter++;
              /*or (int i = 0; i < tracker_pool.trajXPts.size(); ++i)
                if (tracker_pool.trajYPts.at(i).size() > max)
                  max = tracker_pool.trajYPts.at(i).size();
              //*/
            }
            
            param = 0;
          }
      }
  	}
	else {
		fprintf(stderr, "File not found.\n");
		exit(1);
	}
  //*/
  std::cout<<"max = "<<max<<std::endl;
  video.release();
  frame.release();
  for (int i=0;i<numCells;i++) delete cells[i];
  cells.clear();
  cells.shrink_to_fit();
  file.close();
  return(0);
}
