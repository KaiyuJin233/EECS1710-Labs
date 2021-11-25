import processing.video.*;

Capture capture;

PImage videoImg;


void setupCapture(int numCamera) {
  String[] cameraNames = capture.list();
  printArray(cameraNames);
  
  capture = new Capture(this, 640, 480, cameraNames[numCamera], 30);    
  capture.start();
}

void captureEvent(Capture cvideo) {
  cvideo.read();
  videoImg = cvideo;
  armOpenCvUpdate = true;
}
