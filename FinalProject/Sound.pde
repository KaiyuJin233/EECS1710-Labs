class Sound {

  PVector position;
  float size;
  boolean alive = true;
  
  Sound(int _x, int _y, int _size) {
    position = new PVector(_x, _y);
    size = _size;
  }
  
  void draw() {
    fill(random(127));
  }
  
  void run() {
    draw();
  }
  
}
