float scaleAmp = 1200;
float scaleFreq = 1200;


void setup() {
  size(800, 500, P2D);  
  setupSound();
  background(255);
  frameRate(18);
}

void draw() {
  
  
  updateSound();
  
  println("amp: " + amp + " freq: " + freq);
  
  float x1 = random(amp * scaleAmp)* -1.5;
  float y1 = random(freq * 6);
  float x2 = random(amp * scaleAmp)* 1.5;
  
  rectMode(CENTER);
  noStroke();
  float r = random(freq * 2);
  float g = random(freq * 2);
  float b = random(freq * 2);
  fill(r, g, b);
  translate(0, -80);
  rect(y1, x2, 20, 20);
  
  translate(0, height + 160);
  rect(y1, x1, 20, 20);

}
