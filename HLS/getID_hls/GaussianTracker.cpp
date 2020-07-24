#include "GaussianTracker.h"
#include <math.h>
#include <iostream>
#include <cmath>
#include <complex>
using namespace std;

GaussianTracker::GaussianTracker(){
    state = Inactive; 
    eventCount = 0;
    resetTime = 0;
    avgFlowX = 0.0;
    avgFlowY = 0.0;
    x=0,y=0, prevX=0, prevY=0, predX=0,predY=0;
    sp1x=0.0,sp2x=0.0,sp1y=0.0,sp2y=0.0;
    posFactor = 0.2;
    shapeFactor = 0;
    velFactor = 0.01;
    smoothingFactor = 0.1;
    activity = 0.0;
    lastTimeStamp = 0;
    sigmaX = 10;
    sigmaY = 10;
    sigmaXY = 0;
    a=0.0,b=0.0,alpha=0.0,clusterSize=5;
}

//Calculate distance from tracker to event
double GaussianTracker::distance(int eventX, int eventY){
    double deltaX = eventX-x;
    double deltaY = eventY-y;
    return sqrt(deltaX*deltaX + deltaY*deltaY);
 }

//Calculate probability of event being associated with tracker
 double GaussianP(int eventX, int eventY,double x, double y, double sigmaX,double sigmaY,double sigmaXY){
    double deltaX = eventX-x;
    double deltaY = eventY-y;
    double determinant = abs(sigmaX*sigmaY - sigmaXY*sigmaXY);
    if (determinant == 0) determinant = 1;
    double expTerm = (1/determinant)*(deltaX*deltaX*sigmaY-2*deltaX*deltaY*sigmaXY+deltaY*deltaY*sigmaX);
    double denom = 2*M_PI*sqrt(determinant)*exp(0.5*expTerm);
    if (denom == 0) return 0;
    return abs(1/denom);
 }

//Add activity to a tracker
 bool GaussianTracker::addActivity(int actX, int actY, unsigned long int time,double numActive,double maxProb){
    activity++;
    eventCount++;
    double dt = time - lastTimeStamp;

    double newSigmaX = (actX-x)*(actX-x);
    double newSigmaY = (actY-y)*(actY-y);
    double newSigmaXY = (actX-x)*(actY-y);

    //Make proportional change to sigma values based on shape paramater chosen
    sigmaX = (1-shapeFactor)*sigmaX + shapeFactor*newSigmaX;
    sigmaY = (1-shapeFactor)*sigmaY + shapeFactor*newSigmaY;
    sigmaXY = (1-shapeFactor)*sigmaXY + shapeFactor*newSigmaXY;

    //Update physical dimensions of blob tracker
    double trace = sigmaX + sigmaY;
    double determinant = sigmaX*sigmaY - sigmaXY * sigmaXY;
    a = 2*sqrt(trace/2 + abs(sqrt(complex<double>(trace*trace/4-determinant))));
    b = 3*sqrt(trace/2 - abs(sqrt(complex<double>(trace*trace/4-determinant))));
    alpha = 0.5 * atan(2*sigmaXY/(sigmaY - sigmaX));

    clusterSize = (a > b && a > 0 && b >0) ? a : b;
    //clusterSize = (a+b)/2;
    prevX = predX;
   	prevY = predY;
    //Make proportional change to position values based on position paramater chosen
    x = (1-posFactor)*x + posFactor*actX;
    y = (1-posFactor)*y + posFactor*actY;
    double smoothed[2];
    smoothPredict(smoothed,time+1);
    predX = smoothed[0];
    predY = smoothed[1];

    //Velocity of cluster is average of associated events' optical flow
    lastTimeStamp = time;
    avgFlowX = sumFlowX / eventCount;
    avgFlowY = sumFlowY / eventCount;

    if (time - resetTime >= 10000){
      resetTime = time;
      sumFlowX = 0;
      sumFlowY = 0;
      eventCount = 0;
    }
    //Turn on tracker if activity threshold is reached
    //std::cout<<activity<<"\t"<<numActive<<"\t"<<state<<std::endl;
    if(activity > numActive && state != Active){
        state = Active;
        return true;
    }

    //Return if cluster is moved far enough towards events
    if(state == Active)
        return true;

    return false;
 }

//Decay activity and revert tracker state if necessary
 bool GaussianTracker::decayActivity(int dt, double decayFactor, double numInactive, double numFree){
    State origState = state;

    //Decay activity value by factor and check if state changes
    activity = activity*exp(-dt/decayFactor);
    //std::cout<<activity<<"\t"<<numFree<<std::endl;
    if (activity < numFree)
        state = Free;
    else if (activity < numInactive)
        this->deactivate();

    return origState != state;
 }

//Move a tracker
 void GaussianTracker::displace(float deltaX, float deltaY){
    predX += deltaX;
    predY += deltaY;
}

//Set a newly activiated tracker to the given position
void GaussianTracker::setPosition(int new_x, int new_y, int pX, int pY){
	x = new_x;
	y = new_y;
	prevX = pX;
	prevY = pY;
}

//Initialize parameters for a newly created/activated tracker
void GaussianTracker::setParameters(double sF, double smF,double pF, double vF,double sX, double sY, double sXY){
	shapeFactor = sF;
  origShapeFactor = sF;
	smoothingFactor = smF;
  posFactor = pF;
  velFactor = vF;
	sigmaX = sX;
	sigmaY = sY;
	sigmaXY = sXY;
}

//Double-exponential smoothing for tracker trajectory tracking
void  GaussianTracker::smoothPredict(double pair[], int ts)
{
  int deltaT = ts-lastTimeStamp;

  //Calculate smoothing statistics for next prediction
  double prevsp1x = sp1x;
  double prevsp2x = sp2x;
  double prevsp1y = sp1y;
  double prevsp2y = sp2y;
  sp1x = smoothingFactor*x + (1-smoothingFactor)*prevsp1x;
  sp2x = smoothingFactor*sp1x + (1-smoothingFactor)*prevsp2x;
  sp1y = smoothingFactor*y + (1-smoothingFactor)*prevsp1y;
  sp2y = smoothingFactor*sp1y + (1-smoothingFactor)*prevsp2y;

  //Update future tracker position estimate
  double smoothX = (2 + (smoothingFactor*deltaT)/(1-smoothingFactor))*sp1x - (1+ (smoothingFactor*deltaT)/(1-smoothingFactor))*sp2x;
  double smoothY = (2 + (smoothingFactor*deltaT)/(1-smoothingFactor))*sp1y - (1+ (smoothingFactor*deltaT)/(1-smoothingFactor))*sp2y;
  pair[0] = smoothX;
  pair[1] = smoothY;
}
