#include "videoout.h"
#include "TrackerPool.h"
#include <iostream>
using namespace cv;
using namespace std;

//Add event to a particular frame with the same time stamp
void addToFrame(int x, int y, int polarity,Mat &frame)
{
	if(polarity == 1)
		frame.at<Vec3b>(y,x) = Vec3b(255,255,255);
	else
		frame.at<Vec3b>(y,x) = Vec3b(125,125,125);
}

void drawRectangles(Mat &frame,int x, int y, int width, int height){
	rectangle(frame,Point(x,y),Point(x+width,y+height),Scalar(0,255,0));
}

void drawBlobTracker(Mat &frame, double cen_x, double cen_y, double size_x, double size_y, double angle)
{
	ellipse(frame,Point(cen_x,cen_y), Size(size_x,size_y), angle, 0, 360, Scalar(255,255,0), 1, 8 );
}

void drawTrajectory(Mat &frame, traj xpts, traj ypts, int tracker)
{
	vector<Point> contour;
	if (xpts.size(tracker) == 0) return;
	for(int i =0;i<xpts.size(i);i++)
		contour.push_back(Point(xpts.vect[tracker][i],ypts.vect[tracker][i]));
	const Point *pts = (const Point*) Mat(contour).data;
	int npts = Mat(contour).rows;
	polylines(frame,&pts,&npts,1,false,Scalar(0,255,255));

	contour.clear();
	contour.shrink_to_fit();
}

void markCollision(Mat &frame, int x, int y){
	circle(frame, Point(x,y),5, Scalar(0,255,0),CV_FILLED, 8,0);
}
