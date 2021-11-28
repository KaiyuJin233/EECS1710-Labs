PShader shader; 
float timeSet = 1000.0;
float col = 0.0;
PVector shaderMousePos = new PVector(0,0);
PVector shaderMouseClick = new PVector(0,0);

void setupShaders() {
  shader = loadShader("u.glsl"); 
  shaderSetSize(shader);
}

void updateShaders() {
  //shaderCol(shader);
  shaderSetTime(shader);
}

void drawShaders() {
  filter(shader);
}

void runShaders() {
  updateShaders();
  drawShaders();
}

void shaderSetSize(PShader ps) {
  ps.set("iResolution", float(width), float(height), 1.0);
}

void shaderSetTime(PShader ps) {
  ps.set("iTime", (millis()) / timeSet);
  
  if(keyPressed) {
  timeSet = 300; 
  } else {
  timeSet = 1000.0;
  }
}
