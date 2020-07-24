
#include "TrackerPool.h"
#include "hw_functions.h"
#include <iostream>

#define SUCCESS 0
#define FAILURE 1

int main()
{
	// create test tracker pool and values to pass
	TrackerPool trackers;
	int eventX = 0;
	int eventY = 0;
	double newFlow[] = {0,0};
	double maxProb = 0;

	int id = getTrackerID_hw(trackers.trackerPool, eventX, eventY, newFlow, maxProb);

	std::cout<<"ID: "<<id<<"\tProb: "<<maxProb<<std::endl;

	return SUCCESS;

}

