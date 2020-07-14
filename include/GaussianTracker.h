#ifndef GAUSS_TRACK_H
#define GAUSS_TRACK_H

#include <cmath>
#include <vector>
//#include <tuple>
using namespace std;



struct GaussianTracker{

    GaussianTracker();

    //Tracker state in terms of current activity
     enum State{
        Active,
        Inactive,
        Free,
    };
    State state;

    

    //Number of total events associated with tracker each ms
    int eventCount;
    unsigned long int resetTime;
    //Current,past and predicted x/y positions
    double x,y,prevX,prevY,predX,predY;
    //Shape/Position changing parameters
    double shapeFactor,origShapeFactor,posFactor,velFactor,clusterSize;
    //DE Smoothing Parameters
    double smoothingFactor, sp1x,sp2x,sp1y,sp2y;
    //Covariance matrix variables
    double sigmaX,sigmaY,sigmaXY;
    //Physical shape parameters of the blob tracker
    double a,b,alpha;
    //Optical flow of cluster
    double sumFlowX, sumFlowY,avgFlowX,avgFlowY;
    //Event activity associated with cluster
    double activity;
    //Timestamp of last update made to cluster
    unsigned long int lastTimeStamp;

    //DE Smoothing prediction
    void  smoothPredict(double pair[],int ts);
    //Calculate Euclidean distance to event
    double distance(int eventX, int eventY);

    //Add an activity to a cluster and update state
    bool addActivity(int x, int y, unsigned long int time,double numActive,double maxProb);
    //Decay the activity associated with a state and revert state if necessary
    bool decayActivity(int dt, double tau, double numInactive, double numFree);
    //Move a tracker by a given value or set parameters/position
    void displace(float deltaX, float deltaY);
    void setPosition(int new_x, int new_y, int pX, int pY);
    void setParameters(double sF, double smF,double pF,double vF,double sX, double sY, double sXY);

    inline void activate(){state=Active;}
    inline void free(){activity = 0; state=Free;}
    inline void deactivate(){
      prevX = 0;
      prevY=0;
      state=Inactive;}
    inline bool isActive(){return state==Active;}
    inline bool isInactive(){return state==Inactive;}
    inline bool isFree() {return state == Free;}
    inline double getX(){return x;}
    inline double getY(){return y;}
    inline double getprevX(){return prevX;}
    inline double getprevY(){return prevY;}
    inline double getpredX(){return predX;}
    inline double getpredY(){return predY;}
    inline unsigned long int getlasttime(){return lastTimeStamp;}
};

//Calculate probability of being associated with a cluster
double GaussianP(int eventX, int eventY,double x, double y, double sigmaX,double sigmaY,double sigmaXY);

#endif
