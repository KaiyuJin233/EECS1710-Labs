class Letter {  
  PShape shape;
  PVector position;
  PVector[] vertices;
  
  Letter(PShape _s, float _x, float _y) {
    shape = _s;
    position = new PVector(_x, _y, random(-5, 5));
    vertices = new PVector[shape.getVertexCount()];
  }
  
  void update() {
    for (int i=0; i<vertices.length; i++) {
      vertices[i] = shape.getVertex(i);
      vertices[i].add(new PVector(random(-0.3, 0.3), random(-0.3, 0.3)));
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
