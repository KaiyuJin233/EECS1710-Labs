class Eye {
  PVector position, mousePos;
  int size;
  float angle = 0;
  
  Eye(int _x, int _y, int _s) {
    position = new PVector(_x, _y);
    size = _s;
 }
 
  
  void display(float _angle) {
    pushMatrix();
    translate(position.x-30, position.y-20);
    fill(255);
    ellipse(0, 0, size/2, size/2);
    angle = lerp(angle, _angle, 0.05);
    rotate(angle);
    fill(#083BFF);
    ellipse(4, 0, size/4, size/4);
    popMatrix();
  }
}
