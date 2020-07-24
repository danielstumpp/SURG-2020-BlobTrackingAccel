#include "../include/TrackerPool.h"
#include <stdio.h>
#include <math.h>
#include <iostream>
#include "omp.h"
using namespace std;

TrackerPool::TrackerPool() {
  numActive = 2000;
  numInactive = 200;
  numFree = 50;
  numClusters = 10;

  numTrackers = 0;

  sigmaX = 30;
  sigmaY = 30;
  sigmaXY = 0;
  shapeFactor = 0.00001;
  posFactor = 0.4;
  velFactor = 0.0001;
  smoothingFactor = 0.0005;

  repulsionDist = 30;
  repulsionFactor = 10;

  decayFactor = 10000;
  lastDecayTime = -1;
  decayThreshold = 250;
  numEvents = 0;
}


int TrackerPool::getTracker(){
  //Assign an available free tracker
  for (int i = 0; i < POOL_SIZE;i++){
    GaussianTracker *curr = &trackerPool[i];
    if(curr->isFree()){
        curr->setParameters(shapeFactor,smoothingFactor,posFactor, velFactor,sigmaX,sigmaY,sigmaXY);
        curr->deactivate();
        return i;
    }
  }
  return -1;  
}

//Apply repulsion between trackers within a certain distance of one another
void TrackerPool::repulse(int frameWidth,int frameHeight){
   //#pragma omp parallel for
   for(int i=0; i<POOL_SIZE; i++){
       for(int j=i+1; j<POOL_SIZE; j++){
           double r1 = trackerPool[i].clusterSize;
           double r2 = trackerPool[j].clusterSize;
           int deltaX = trackerPool[i].predX - trackerPool[j].predX;
           int deltaY = trackerPool[i].predY - trackerPool[j].predY;
           double dist = sqrt(deltaX*deltaX + deltaY*deltaY);

           if (dist < 0.6*(r1+r2) && trackerPool[i].isActive() && trackerPool[j].isActive()){
              if (trackerPool[i].activity > trackerPool[j].activity) trackerPool[j].deactivate();
              else trackerPool[i].deactivate();
           }
      }
   }
}

int getTrackerID(GaussianTracker trackerPool[POOL_SIZE], int eventX, int eventY, double newFlow[2], double &maxProb)
{

	double closestFlow = 100000;
	double maxDist = 60;
	double minDist = 60;
	int trackerID = -1;
	bool activeChosen = false;

	// Search for active/inactive Gaussian tracker with highest probability to be associated with event
	for(int i=0; i<POOL_SIZE; i++){
		double dist = trackerPool[i].distance(eventX, eventY);  //need to do this in hw as well
    //std::cout<<trackerPool[i].isActive()<<"\t"<<dist<<"\t"<<maxDist<<std::endl;
		if(trackerPool[i].state == GaussianTracker::State::Active && dist < maxDist){

			double p = GaussianP(eventX, eventY,trackerPool[i].x,trackerPool[i].y,trackerPool[i].sigmaX,trackerPool[i].sigmaY,trackerPool[i].sigmaXY);

			double diffX = newFlow[0] - trackerPool[i].avgFlowX;
			double diffY = newFlow[1] - trackerPool[i].avgFlowY;
			double flowDiff = sqrt(diffX*diffX+diffY*diffY);
			if (flowDiff != flowDiff) flowDiff = 75000;
			if(dist < minDist || trackerID == -1){
				activeChosen = true;
				maxProb = p;
				minDist = dist;
				closestFlow = flowDiff;
				trackerID = i;
			}
			else if(dist < 0.7*minDist && flowDiff < 0.5*closestFlow){
				activeChosen = true;
				maxProb = p;
				minDist = dist;
				closestFlow = flowDiff;
				trackerID = i;
			}
		}
		else if (trackerPool[i].isInactive() && dist < maxDist && !activeChosen){
		  double p = GaussianP(eventX, eventY,trackerPool[i].x,trackerPool[i].y,trackerPool[i].sigmaX,trackerPool[i].sigmaY,trackerPool[i].sigmaXY);
		  double diffX = newFlow[0] - trackerPool[i].avgFlowX;
		  double diffY = newFlow[1] - trackerPool[i].avgFlowY;
		  double flowDiff = sqrt(diffX*diffX+diffY*diffY);
		  if (flowDiff != flowDiff) flowDiff = 75000;
		  if(dist < minDist || trackerID == -1){
			  maxProb = p;
			  minDist = dist;
			  closestFlow = flowDiff;
			  trackerID = i;
		  }
		  else if(dist < 0.7*minDist && flowDiff < 0.5*closestFlow){
				activeChosen = true;
				maxProb = p;
				minDist = dist;
				closestFlow = flowDiff;
				trackerID = i;
		  }
		}
	}

	return trackerID;
}

int TrackerPool::update(int eventX, int eventY, unsigned long int eventTime, int frameWidth, int frameHeight,vector<int>* pixels)
{
	double newFlow[2];
	double maxProb = 0;
    computeOpticalFlow(newFlow,3,2000,frameWidth,frameHeight,pixels, eventX, eventY,eventTime);
    //Reset decay timer
    if(lastDecayTime < 0) lastDecayTime = eventTime;

    // will be accelerated
    int trackerID = getTrackerID(trackerPool, eventX, eventY, newFlow, maxProb);

    bool updated = false;

    //Get a new tracker if no active trackers are close enough
    if(trackerID == -1) {
        trackerID = getTracker();
        if(trackerID >= 0) {
            trackerPool[trackerID].setPosition(eventX,eventY,eventX,eventY);
            trackerPool[trackerID].lastTimeStamp = eventTime;
        }
    }
    // Update chosen tracker
    else{
        
        trackerPool[trackerID].sumFlowX += newFlow[0];
        trackerPool[trackerID].sumFlowY += newFlow[1];
        updated = trackerPool[trackerID].addActivity(eventX, eventY, eventTime, numActive,maxProb);
      }
    //*/
    
    //Apply repulsion effect between adjacent trackers
    repulse(frameWidth,frameHeight);
    
    //Apply decay rate if events have reached threshold
    if(numEvents++ < decayThreshold)
      return trackerID;
    
    short dt = eventTime - lastDecayTime;
    lastDecayTime = eventTime;
    numEvents = 0;

    for(int i = 0; i < POOL_SIZE; i++){
        if(trackerPool[i].isFree())
          continue;
        
        bool updated = trackerPool[i].decayActivity(dt, decayFactor, numInactive, numFree);
        if(updated){
          trackerPool[i].lastTimeStamp = eventTime;
          trackerPool[i].avgFlowX = 0;
          trackerPool[i].avgFlowY = 0;
          trackerPool[i].sumFlowX = 0;
          trackerPool[i].sumFlowY = 0;
          trackerPool[i].eventCount = 0;
          removePts(trajXPts.size(i),i);
        }
    }
    return trackerID;
}


//Increment total event counter for tracking decay for filtered out events
void TrackerPool::incrementEvents(unsigned long int eventTime)
{
  numEvents++;
  
  //Apply decay rate if events have reached threshold
  if(numEvents >= decayThreshold){

    int dt = eventTime - lastDecayTime;
    lastDecayTime = eventTime;
    numEvents = 0;
    
    for(int i = 0; i < POOL_SIZE; i++){
        if(trackerPool[i].isFree())
         continue;
        
        bool updated = trackerPool[i].decayActivity(dt, decayFactor, numInactive, numFree);
        
        if(updated){
          
          trackerPool[i].lastTimeStamp = eventTime;
          trackerPool[i].avgFlowX = 0;
          trackerPool[i].avgFlowY = 0;
          trackerPool[i].sumFlowX = 0;
          trackerPool[i].sumFlowY = 0;
          trackerPool[i].eventCount = 0;
          removePts(trajXPts.size(i),i);
        }
      
    }//*/
  }//*/
}

//Detect and mark projected collisions
//Blobs are predicted to collided if their regions overlapped at the next predicted location
//and if their sizes are within 10% of each other (i.e. assuming similarly sized objects in 3D space)
int* TrackerPool::detectCollisions(GaussianTracker trackerList[POOL_SIZE],GaussianTracker subject, int currID,double projectA[]){
  double r1 = subject.clusterSize;
  //#pragma omp parallel for
  int* collisions = (int*) calloc(POOL_SIZE,sizeof(int));
  for (int i =0; i< POOL_SIZE;i++){
    if (trackerList[i].isActive() && i != currID){
      double r2 = trackerList[i].clusterSize;
      double projectB[2];
      trackerList[i].smoothPredict(projectB,trackerList[i].lastTimeStamp + 3000);
      int deltaX = projectA[0] - projectB[0];
      int deltaY = projectA[1] - projectB[1];
      double dist = deltaX*deltaX + deltaY*deltaY;
      double rsumsq = (r1+r2)*(r1+r2);
      double percDiff = abs(r1-r2)/r1;
      if (dist < rsumsq && percDiff < 0.1)
        collisions[i] = 1;
    }
  }
  return collisions;
}

void TrackerPool::bezier(int x0,int x3,int y0,int y3,float a, float theta,int currTracker){
    float dist = sqrt((x3-x0)*(x3-x0)+(y3-y0)*(y3-y0));
    float r = a*dist;
    int x1 = x0 + r*sin(theta);
    int x2 = x3 - r*sin(theta);
    int y1 = y0 + r*cos(theta);
    int y2 = y3 - r*cos(theta);
    for (float t=0.0;t<1;t+=0.2){
        float xout = 0.0,yout = 0.0;
        xout += x0*(1-t)*(1-t)*(1-t);
        xout += 3*x1*(1-t)*(1-t)*t;
        xout += 3*x2*(1-t)*t*t;
        xout += x3*t*t*t;
        yout += y0*(1-t)*(1-t)*(1-t);
        yout += 3*y1*(1-t)*(1-t)*t;
        yout += 3*y2*(1-t)*t*t;
        yout += y3*t*t*t;
        trajXPts.push_back(currTracker, (int)xout+0.5);
        trajYPts.push_back(currTracker, (int)yout+0.5);
    }
}

void TrackerPool::removePts(int numPts,int trackerID){
  // removed outer for loop
  //for (int i =0; i < numPts;i++){
    if (trajXPts.size(trackerID)>0){
      trajXPts.erase(trackerID,numPts);
      trajYPts.erase(trackerID,numPts);
    }
}

void TrackerPool::computeOpticalFlow(double newFlow[], int spatialWindow, int tempWindow,
    int frameWidth, int frameHeight,vector<int>* pixels, int eX, int eY, int eT){

  vector<int> xpts;
  vector<int> ypts;
  vector<int> tpts;
  //Calculate starting and ending points for kernel window
  int startY = (eY <= spatialWindow) ? 0 : eY - spatialWindow;
  int endY = (eY >= frameHeight - 1 - spatialWindow) ? frameHeight-1 : eY + spatialWindow;
  int startX = (eX <= spatialWindow) ? 0 : eX - spatialWindow;
  int endX = (eX >= frameWidth - 1 - spatialWindow) ? frameWidth-1 : eX + spatialWindow;

  //Collect previous events within the temporal window
  for (int y = startY; y <= endY; y++){
    for (int x = startX; x <= endX; x++){
      int index = y*frameWidth + x;
      if (pixels->at(index) - eT <= tempWindow){
        xpts.push_back(x);
        ypts.push_back(y);
        tpts.push_back(pixels->at(index)-eT);
      }
    }
  }

  //Calculate covariance from means
  double tmean = 0.0,xmean=0.0,ymean=0.0;
  for (int i =0;i<xpts.size();i++){
    tmean+=tpts[i];
    xmean+=xpts[i];
    ymean+=ypts[i];
  }
  tmean /= tpts.size();
  xmean /= xpts.size();
  ymean /= ypts.size();
  double txSum = 0.0,tySum=0.0,xxSum=0.0,xySum=0.0,yySum=0.0;
  for (int i =0;i<xpts.size();i++){
    txSum += (tpts[i] - tmean)*(xpts[i]-xmean);
    tySum += (tpts[i] - tmean)*(ypts[i]-ymean);
    xxSum += (xpts[i] - xmean)*(xpts[i]-xmean);
    xySum += (xpts[i] - xmean)*(ypts[i]-ymean);
    yySum += (ypts[i] - ymean)*(ypts[i]-ymean);
  }
  //Calculate determinants and inverse square sum to Calculate
  //dx/dt and dy/dt
  double tDet = xxSum*yySum - xySum*xySum;
  double xDet = txSum*yySum - tySum*xySum;
  double yDet = tySum*xxSum - txSum*xySum;
  double invSqSum = 1.0 / (xDet*xDet + yDet*yDet);

  newFlow[0] = tDet*xDet*invSqSum;
  newFlow[1] = tDet*yDet*invSqSum;
}


//Dynamic background suppression cell
ActivityCell::ActivityCell()
{
  activity = 0.0;
  lastSpikeTime =0;
}

//Add an event to cell and apply exponential decay
double ActivityCell::addEvent(unsigned long int eventTime, double spikeRateFactor){
    activity = activity * exp(-(double)(eventTime-lastSpikeTime)/spikeRateFactor) + 1;
    lastSpikeTime = eventTime;
    return activity;
}
