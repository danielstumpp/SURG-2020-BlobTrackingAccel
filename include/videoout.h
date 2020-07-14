#ifndef VIDEOOUT_H
#define VIDEOOUT_H

#include <vector>
#include <tuple>
#include <opencv2/opencv.hpp>
#include "TrackerPool.h"
using namespace cv;
using namespace std;

void addToFrame(int x, int y, int polarity,Mat &frame);

void drawRectangles(Mat &frame,int x, int y, int width, int height);

void drawBlobTracker(Mat &frame, double cen_x, double cen_y, double size_x, double size_y, double angle);

void drawTrajectory(Mat &frame, traj xpts, traj ypts, int index);

void markCollision(Mat &frame, int x, int y);

#endif
