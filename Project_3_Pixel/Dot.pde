class Dot {

  PVector position, target;
  color col;
  float speed;
  
  Dot(float x, float y, color _col) {
    position = new PVector(x, y);
    target = new PVector(random(width), random(height));
    col = _col;
    speed = 0.00002;

  }
  
  void update() {
    position.lerp(target, speed);
  }
  
  void draw() {
    rect(position.x, position.y, 10, 10);
    fill(col);
  }
  
  void run() {
    update();
    draw();
  }

}
