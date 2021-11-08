float scaleAmp = 1000;
float scaleFreq = 1000;


void setup() {
  size(800, 500, P2D);  
  setupSound();
  background(255);
}

void draw() {
  
  
  updateSound();
  
  println("amp: " + amp + " freq: " + freq);
  
  float x = random(amp * scaleAmp)*1.5;
  float y = random(freq * 6);
  
  rectMode(CENTER);
  noStroke();
  float r = random(freq * 2);
  float g = random(freq * 2);
  float b = random(freq * 2);
  fill(r, g, b);
 
  rect(y, x, 20, 20);
}
