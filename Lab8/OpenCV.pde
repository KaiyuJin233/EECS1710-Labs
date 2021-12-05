import gab.opencv.*;

OpenCV openCV;
int edges = 5;
int threshold = 135;

void setOpenCV(Gif gif) { 
  openCV = new OpenCV(this, gif);
  openCV.loadImage(gif);
  openCV.gray();
  openCV.blur(6);
  openCV.findCannyEdges(50, edges);
}
