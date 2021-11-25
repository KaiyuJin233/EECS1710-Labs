void setup() {
  size(640, 480, FX2D); 
  setupCapture(0);
}

void draw() {  

  background(0);
  
  if (videoImg != null) {
    if (openCV == null) {
      setupOpenCV(videoImg);
    } else {
      updateOpenCV(videoImg);
    }
    image(openCV.getSnapshot(), 0, 0);
  }
  surface.setTitle("" + frameRate);
}
