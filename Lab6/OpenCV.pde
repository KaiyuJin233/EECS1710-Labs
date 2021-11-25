import gab.opencv.*;

OpenCV openCV;
int adaptive = 1;
int edges = 1;

boolean armOpenCvUpdate = false;

void setupOpenCV(PImage img) { 
  openCV = new OpenCV(this, img);
}

void updateOpenCV(PImage img) {
  if (armOpenCvUpdate) {
    openCV.loadImage(img);
    openCV.gray();
    openCV.blur(6); 
    openCV.adaptiveThreshold(501, adaptive);
    openCV.findCannyEdges(20, edges);
    armOpenCvUpdate = false;
}
}
