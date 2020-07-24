#ifndef _HW_FUNCTIONS

#include "hw_functions.h"
#include "TrackerPool.h"
//#include "../../inlcude/GaussianTracker.h"
#include <stdio.h>
#include <math.h>
#include <iostream>
using namespace std;


/********************** distance calc Accel *****************
 * ****************************************************************
 * Calc distance from tracker to event
 ******************************************************************/
float distance_hw(int eventX, int eventY, double x, double y)
{
    float deltaX = eventX-x;
    float deltaY = eventY-y;
    return sqrt(deltaX*deltaX + deltaY*deltaY);
 }

/********************** Gaussian Prob Accelerator *****************
 * ****************************************************************
 * Calculate probability of event being associated with tracker
 ******************************************************************/
float GaussianP_hw(int eventX, int eventY,double x, double y, double sigmaX,double sigmaY,double sigmaXY)
{
   float deltaX = eventX-x;
   float deltaY = eventY-y;
   float determinant = abs(sigmaX*sigmaY - sigmaXY*sigmaXY);
   if (determinant == 0)
   {
	   determinant = 1;
   }
   float expTerm = (1/determinant)*(deltaX*deltaX*sigmaY-2*deltaX*deltaY*sigmaXY+deltaY*deltaY*sigmaX);
   float denom = 2*M_PI*sqrt(determinant)*exp(0.5*expTerm);
   if (denom == 0)
   {
	   return 0;
   }
   return abs(1/denom);
}


int getTrackerID_hw(GaussianTracker trackerPool[POOL_SIZE], int eventX, int eventY, double newFlow[2], double &maxProb)
{
#	pragma HLS INTERFACE s_axilite port=trackerPool
#   pragma HLS pipeline II= 100


	float closestFlow = 100000;
	int maxDist = 60;
	int minDist = 60;
	int trackerID = -1; // fix this type eventually
	bool activeChosen = false;

	// Search for active/inactive Gaussian tracker with highest probability to be associated with event
	mainGTIDloop : for(int i=0; i<POOL_SIZE; i++)
	{
//#     	pragma HLS UNROLL
		float dist = distance_hw(eventX, eventY,trackerPool[i].x,trackerPool[i].y);
		float p = GaussianP(eventX, eventY,trackerPool[i].x,trackerPool[i].y,trackerPool[i].sigmaX,trackerPool[i].sigmaY,trackerPool[i].sigmaXY);
		float diffX = newFlow[0] - trackerPool[i].avgFlowX;
		float diffY = newFlow[1] - trackerPool[i].avgFlowY;
		float flowDiff = sqrt(diffX*diffX+diffY*diffY);
		if (flowDiff != flowDiff) flowDiff = 75000;

		if(trackerPool[i].state == 0 && dist < maxDist)
		{
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
		else if (trackerPool[i].state == 1 && dist < maxDist && !activeChosen){

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

#endif // HW_FUNCTIONS
