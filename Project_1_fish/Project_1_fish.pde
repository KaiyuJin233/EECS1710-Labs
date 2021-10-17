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
