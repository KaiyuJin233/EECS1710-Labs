void setup() { 
  size(1280, 768, P2D);
  setupShaders();
}

void draw() {
  background(0); 
  runShaders();
}
