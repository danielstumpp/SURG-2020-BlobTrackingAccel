#include "TrackerPool.h"

float distance_hw(int eventX, int eventY, double x, double y);
float GaussianP_hw(int eventX, int eventY, double x, double y, double sigmaX, double sigmaY, double sigmaXY);
int getTrackerID_hw(GaussianTracker trackerPool[POOL_SIZE], int eventX, int eventY, double newFlow[2], double &maxProb);
