int num = 3;

float x, y;
PVector position;
PImage sea;
Follow[] f = new Follow[num];

void setup() {
  size(600, 480, P2D);
  sea = loadImage("sea.jpg");
  sea.resize(width, height);
  for (int i = 0; i<f.length; i++) {
  f[i] = new Follow(random(width), random(height));
  }
  position = new PVector(x, y);
  frameRate(60);
}

void draw() {
  background(sea);
  for (int i = 0; i<f.length; i++) {
  f[i].run();
  }
}
// image link: https://th.bing.com/th/id/R.6097d493782a1a7714caad862e2cf517?rik=M2wtMoVagMlM%2bQ&riu=http%3a%2f%2fbpic.588ku.com%2fback_pic%2f04%2f62%2f52%2f08586fa9523e292.jpg!%2ffh%2f300%2fquality%2f90%2funsharp%2ftrue%2fcompress%2ftrue&ehk=jMCVA4kiammzldRemdL6RnXLVWl6hQiDEbmQvZNnaV4%3d&risl=&pid=ImgRaw&r=0
