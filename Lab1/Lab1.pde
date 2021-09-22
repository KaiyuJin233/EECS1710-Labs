int x = 800; // Width
int y = 600; // Height
int c1 = 0; // color 1
int c2 = 125; // color 2
int c3 = 255; // color 3

void setup(){ 
  size(800, 600, P2D); // Set the size of the artboard
  background(255, 255, 255); //White background
  frameRate(60); //Set the frame rate
}
void draw() {
  rectMode(CENTER); //Appears in the middle of the mouse
  if (mousePressed) {
    if (mouseX > 0 && mouseX < x/2 && mouseY > 0 && mouseY < y/2) { //The upper left corner area. 
      fill(random(c2, c3), random(c2, c3), c1); //Randomly fill the range of colors we set
   }
   
   if (mouseX > 0 && mouseX < x/2 && mouseY > y/2 && mouseY < y) { //The lower left corner area. 
      fill(random(c1, c3), random(c1, c3), c2); //Randomly fill the range of colors we set
   }
   
    if (mouseX > x/2 && mouseX < x && mouseY > 0 && mouseY < y) { //The area in the upper right corner. 
      fill(random(c2, c3), random(c1, c2), c1); //Randomly fill the range of colors we set
   }
   
   if (mouseX > x/2 && mouseX < x && mouseY > y/2 && mouseY < y) { //The area in the lower right corner. 
      fill(random(c1, c3), random(c1, c2), c2); //Randomly fill the range of colors we set
   }
   rect(mouseX, mouseY, 20, 20); //Follow the mouse pointer to draw a cube with length and width 20
   noStroke(); //Remove the sides of the cube
 }
  line(0, y/2, x, y/2);
  line(x/2, 0, x/2, y);
  
  println(mouseX, mouseY);
}
