#include "TrackerPool.h"
#include "GaussianTracker.h"


int getTrackerID_hw(GaussianTracker trackerPool[POOL_SIZE], int eventX, int eventY, double newFlow[2], double &maxProb)
{

	double closestFlow = 100000;
	double maxDist = 60;
	double minDist = 60;
	int trackerID = -1; // fix this type eventually
	bool activeChosen = false;

	// Search for active/inactive Gaussian tracker with highest probability to be associated with event
	mainGTIDloop : for(int i=0; i<POOL_SIZE; i++)
	{
#     pragma HLS UNROLL
		double dist = distance_hw(eventX, eventY,trackerPool[i].x,trackerPool[i].y);

		if(trackerPool[i].state == GaussianTracker::State::Active && dist < maxDist)
		{
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

/********************** distance calc Accel *****************
 * ****************************************************************
 * Calc distance from tracker to event
 ******************************************************************/
double distance_hw(int eventX, int eventY, double x, double y){
    double deltaX = eventX-x;
    double deltaY = eventY-y;
    return sqrt(deltaX*deltaX + deltaY*deltaY);
 }

/********************** Gaussian Prob Accelerator *****************
 * ****************************************************************
 * Calculate probability of event being associated with tracker
 ******************************************************************/
double GaussianP_hw(int eventX, int eventY,double x, double y, double sigmaX,double sigmaY,double sigmaXY)
{
   double deltaX = eventX-x;
   double deltaY = eventY-y;
   double determinant = abs(sigmaX*sigmaY - sigmaXY*sigmaXY);
   if (determinant == 0)
   {
	   determinant = 1;
   }
   double expTerm = (1/determinant)*(deltaX*deltaX*sigmaY-2*deltaX*deltaY*sigmaXY+deltaY*deltaY*sigmaX);
   double denom = 2*M_PI*sqrt(determinant)*exp(0.5*expTerm);
   if (denom == 0)
   {
	   return 0;
   }
   return abs(1/denom);
}
