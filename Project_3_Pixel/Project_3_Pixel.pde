PImage img;
ArrayList<Dot> dots;
int scaler = 12; 

void setup() {
  size(100, 100, P2D);  
  img = loadImage("png1.png");
  surface.setSize(img.width, img.height);
  
  img.loadPixels(); 
  imgG();
  
  loadPixels();
}

void draw() { 
  background(0);
  
  if (mousePressed == true) {
  imgG();
  } 
  if (keyPressed == true) {
  imgC();
  }
  
  for (Dot dot : dots) {
    dot.run();
  }
}

void imgG() {
  dots = new ArrayList<Dot>();
 
  for (int x = 0; x < img.width; x += scaler) {
    for (int y = 0; y < img.height; y += scaler) {
      int loc = x + y * (img.width);
      dots.add(new Dot(x, y-12, img.pixels[loc]));
      if (mousePressed == true) {
      img.pixels[loc] = img.pixels[loc] + 2;
      }    
    }
  }
}

void imgC() {
  dots = new ArrayList<Dot>();
  for (int x = 0; x < img.width; x += scaler) {
    for (int y = 0; y < img.height; y += scaler) {
      int loc = x + y * (img.width);
      dots.add(new Dot(x, y-12, img.pixels[loc]));
      if (keyPressed == true) {
      img.pixels[loc] = color(random(0, 255), random(0, 255));
      }    
    }
  }
}
