class LetterGenerator {
  
  PShape j, i, n;
  ArrayList<Letter> letters;
  PVector position;
  float distance = 140;
  
  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);
    letters = new ArrayList<Letter>();
    
    for (int a=0; a<input.length(); a++) {     
      char c = input.charAt(a);
      float px = position.x + ((a+1) * distance);
      float py = position.y;
      
      switch(c) {
        case 'j':
          letters.add(new Letter(j, px, py));
          break;
        case 'i':
          letters.add(new Letter(i, px, py));
          break;
        case 'n':
          letters.add(new Letter(n, px, py));
          break;
      }
    }
    
  }

  void initShapes() {
    j = createShape();
    j.beginShape();
    j.translate(40, 20);
    j.fill(255,0,0);
    j.vertex(0, 0);
    j.fill(#EAF21D);
    j.vertex(150, 0);
    j.stroke(0);
    j.vertex(150, 343);
    j.fill(#D31F0F);
    j.vertex(-30, 219);
    j.vertex(100, 253);
    j.vertex(100, 53); 
    j.endShape(CLOSE);
    
    i = createShape();
    i.beginShape();
    i.translate(80, 20);  
    i.vertex(0, 0);
    i.fill(#17CAE8);
    i.vertex(180, 0);
    i.vertex(180, 40);
    i.vertex(120, 40);
    i.vertex(120, 283);
    i.vertex(180, 283);
    i.vertex(180, 323);
    i.fill(#B017E8);
    i.vertex(0, 323);
    i.vertex(0, 283);
    i.vertex(60, 283);
    i.vertex(60, 40);
    i.vertex(0, 40);
    i.endShape(CLOSE);   
    
    n = createShape();
    n.beginShape();
    n.translate(200, 20);
    n.stroke(0);
    n.fill(#FC0DA9);
    n.vertex(0, 0);
    n.vertex(-40, 313);
    n.vertex(40, 160);
    n.fill(#4DE30E);
    n.vertex(160, 313);
    n.vertex(200, 0);
    n.vertex(120, 160);
    n.endShape(CLOSE);
  }

  void draw() {
    for (Letter letter : letters) {
      letter.run();
    }
  }
  
  void run() {
    draw();
  }

}
