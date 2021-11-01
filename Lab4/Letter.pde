class Letter {  
  PShape s;
  PVector position;
  PVector[] vertices;
  
  Letter(PShape _s, float x, float y) {
    s = _s;
    position = new PVector(x, y, random(-5, 20));
    vertices = new PVector[s.getVertexCount()];
  }
  
  void update() {
    for (int i=0; i<vertices.length; i++) {
      vertices[i] = s.getVertex(i);
      vertices[i].add(new PVector(random(-0.1, 0.1), random(-0.1, 0.1)));
      s.setVertex(i, vertices[i]);
    }
  }
  
  void draw() {
    pg.pushMatrix();
    pg.shapeMode(CENTER);
    pg.translate(position.x, position.y, position.z);
    pg.shape(s, 0, 0);
    pg.popMatrix();
  }
  
  void run() {
    update();
    draw();
  }
}
