class Letter {  
  PShape shape;
  PVector position;
  PVector[] vertices;
  float range = 0.5;

  
  Letter(PShape _s, float _x, float _y) {
    shape = _s;
    position = new PVector(_x, _y, random(-5, 5));
    vertices = new PVector[shape.getVertexCount()];
  }
  
  void update() {
    for (int i=0; i<vertices.length; i++) {
      vertices[i] = shape.getVertex(i);
      position.add(new PVector (random(-range, range), random(-range, range)));
      if (position.x > 0 || position.y > 0) {
      range++;
      }
      if (position.x < width/1.1 || position.y < height/1.1) {
      range--;
      }
      shape.setVertex(i, vertices[i]);
    }
  }
  
  void draw() {
    pg.pushMatrix();
    pg.shapeMode(CENTER);
    pg.translate(position.x, position.y, position.z);
    pg.shape(shape, 0, 0);
    pg.popMatrix();
  }
  
  void run() {
    update();
    draw();
  }
}
