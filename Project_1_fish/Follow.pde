class Follow {
  PVector position, target;
  float food = 0.04;
  float _x, _y;
  float location1, location2;
  boolean check = false;
  float angle = 0;
  Eye e1;
  
  Follow(float x, float y) {
    position = new PVector(x, y);
    noStroke();
    ellipseMode(CENTER);   
    target = new PVector(random(width), random(height));  
    e1 = new Eye(15, 20, 30);   
  }
  
  void update() {
    angle = atan2(mouseY - position.y, mouseX - position.x);
  }
  
  void mousePressed() {
      check = false;
    }
   
  void draw() {
   PVector mousePos = new PVector(mouseX, mouseY);
   check = position.dist(mousePos) < 100;
    
   if (mousePressed == true) {
   location1 = mouseX;
   _x = location1 - position.x;
   position.x += _x * food;
   location2 = mouseY;
   _y = location2 - position.y;
   position.y += _y * food;
   foodimage();
   }
     
   if (mousePressed == false) {  
     if(check) {
     position = position.lerp(target, 0.1);
     if (position.dist(target) < 3) {
      target = new PVector(random(width), random(height));
      }
     }
    }
    
    fish();
    
    pushMatrix();
    translate(position.x, position.y);
    e1.display(angle);
    popMatrix();
   } 
  
  void run() {
    update();
    draw();
  }
 
  void fish() {
   fill(#1A8B90);
   ellipse(position.x, position.y, 60, 20);
   triangle(position.x, position.y, position.x+40, position.y-15, position.x+40, position.y+15);
  }
  
  void foodimage() {
      fill(#F5B719);
      ellipse(mouseX, mouseY, 10, 10);
    }
    
      
  }
