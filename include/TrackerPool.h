#ifndef __TRACKERPOOL_H
#define __TRACKERPOOL_H

#include "GaussianTracker.h"
#include <vector>
#include <stdio.h>

#define POOL_SIZE 20
#define TRAJ_ROWS POOL_SIZE
#define TRAJ_COLS 1000

double distance_hw(int eventX, int eventY, double x, double y);
double GaussianP_hw(int eventX, int eventY,double x, double y, double sigmaX,double sigmaY,double sigmaXY);
int getTrackerID_hw(GaussianTracker trackerPool[POOL_SIZE], int eventX, int eventY, double newFlow[2], double &maxProb);

//Individual cell of the sensor's view that tracks its own
//relative activity.
struct ActivityCell{

    double activity;
    unsigned long int lastSpikeTime;

    ActivityCell();
    double addEvent(unsigned long int eventTime, double spikeRateFactor);
};

// for static trajectory
struct traj{
    int vect[TRAJ_ROWS][TRAJ_COLS];
    int sizeVect[TRAJ_ROWS];

    //constructor
    traj(){
        for (int i = 0; i < TRAJ_ROWS; ++i)
        {
            sizeVect[i] = 0;
            for (int j = 0; j < TRAJ_COLS; ++j)
            {
                vect[i][j] = 0;
            }
        }
    }

    int size(int pos) {return sizeVect[pos];}

    void erase(int pos, int numPts){
        int newPos = 0;
        for (int i = numPts; i < sizeVect[pos]; ++i)
        {
            vect[pos][newPos] = vect[pos][i];
        }
        sizeVect[pos] -= numPts;
    }

    void push_back(int pos, int val){
        if (sizeVect[pos] < TRAJ_COLS){
            vect[pos][sizeVect[pos]] = val;
        }
    }
};

struct TrackerPool {

    TrackerPool();
    ~TrackerPool();
    GaussianTracker trackerPool[POOL_SIZE];
    int decayThreshold, numEvents,numClusters,repulsionDist;
    unsigned long int  lastDecayTime;
    double numActive, numInactive, numFree;
    double sigmaX, sigmaY, sigmaXY;
    double decayFactor,shapeFactor,posFactor,velFactor,repulsionFactor,smoothingFactor;
    int numTrackers;
    //Hold points for curves fit to tracker trajectories
    //std::vector<std::vector<int>> trajXPts;
    //std::vector<std::vector<int>> trajYPts;
    //int trajXPts[TRAJ_ROWS][TRAJ_COLS];
    //int trajYPts[TRAJ_ROWS][TRAJ_COLS];

    // new for conversion of traj pts to static
    traj trajXPts;
    traj trajYPts;

    //Calculate points from a fit Bezier curve or clear points
    void bezier(int x0,int x3,int y0,int y3,float a, float theta,int currTracker);
    //Remove points from a currently tracked trajectory
    void removePts(int numPts,int trackerID);

    int getTracker();
    void repulse(int frameWidth,int frameHeight);
    void computeOpticalFlow(double newFlow[], int spatialWindow, int tempWindow,int frameWidth, int frameHeight,vector<int>* pixels, int eX, int eY, int eT);
    int* detectCollisions(GaussianTracker trackerList[POOL_SIZE],GaussianTracker subject, int currID,double projectA[]);
    int update(int eventX, int eventY, unsigned long int eventTime, int frameWidth, int frameHeight,vector<int>* pixels);
    void incrementEvents(unsigned long int eventTime);
};
#endif
