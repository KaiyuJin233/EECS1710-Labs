LetterGenerator generator;
String input = "jin";
PGraphics pg;

int scaler = 1;
float zoom = 1.1/scaler;

void setup() {
  size(800, 600, P3D);
  generator = new LetterGenerator(input, -20, height/2.5);
  pg = createGraphics(width/scaler, height/scaler, P3D);

}

void draw() {
  pg.beginDraw();
  pg.background(255);
  pg.scale(zoom);
  generator.run(); 
  pg.endDraw();
  image(pg, 0, 0, width, height);
}
