PImage light; //Datatype for storing images.
float x = 120; //The position of the object on the x axis 
float x1, x2, x3, x4, x5 = 150; //The position of the object on the x axis 
float y1 = 160; //The position of the object on the y axis 
float y =640/2; //The position of the object on the y axis 
float speed = 2; //Speed setting 
float speed1 = 1; //Speed setting 
float speed2 = 0.5; //Speed setting 
float speed3 = 2.2; //Speed setting 
float speed4 = 0.7; //Speed setting 
float speed5 = 1.3; //Speed setting 

void setup() {
  size(800, 640, P2D); //set size
  light = loadImage("background.jpg"); //Load the image into the program 
  light.resize(width, height); //Reset the length and width 
  imageMode(CENTER); //Set image location 
}


void draw() {
  noStroke();
  background(0, 0, 0); //background color
  
  if(mousePressed == true) { // When the mouse is clicked, the background turns to dark and the mouse changes from the sun to the moon, and the clouds disappeared. 
  tint(147, 147, 142, 150);
  image(light, 400, 320);
  moon();
  }
  
  if(mousePressed == false) { //When the mouse is not clicked, the background turns to dawn and the mouse changes from the moon to the sun, and clouds appear. 
  noTint();
  image(light, 400, 320);
  sun();
  cloud(); 
  cloud2();
  cloud3();
  cloud4();
  cloud5();
  }
  airPlane();
}


void airPlane() { //Set the shape of the airplane. 
  
  fill(255, 255, 255);
  ellipse(x, y, 140, 30);
  triangle(x, y-80, x, y+80, x+30, y);
  triangle(x-60, y-40, x-60, y+40, x-40, y);
  x += speed; //Make the object move 
 
   if (x > 940 || x < -140) { //Moving range
   speed *= -1;
  } 
}

void sun(){ //Set a sun and follow the mouse 
  fill(255, 158, 0);
  ellipse(mouseX, mouseY, 90, 90);
}

void moon(){ //Set a moon and follow the mouse 
  fill(255, 243, 0);
  ellipse(mouseX, mouseY, 60, 60);
}

void cloud() { //Set the shape of the cloud. 
  fill(255, 255, 255);
  ellipse(x1, y1, 40, 40);
  ellipse(x1+10, y1, 40, 30);
  ellipse(x1-10, y1, 40, 30);
  x1 += speed1;
  
  if (x1 > 640 || x1 < 0) {
    speed1 *= -1;
  }
}

void cloud2() { //Set the shape of the cloud. 
  fill(255, 255, 255);
  ellipse(x2, y1+200, 40, 40);
  ellipse(x2+10, y1+200, 40, 30);
  ellipse(x2-10, y1+200, 40, 30);
  x2 += speed2;
  
  if (x2 > 640 || x2 < 0) {
    speed2 *= -1;
  }
}

void cloud3() { //Set the shape of the cloud. 
  fill(255, 255, 255);
  ellipse(x3, y1+40, 40, 40);
  ellipse(x3+10, y1+40, 40, 30);
  ellipse(x3-10, y1+40, 40, 30);
  x3 += speed3;
  
  if (x3 > 640 || x3 < 0) {
    speed3 *= -1;
  }
}

void cloud4() { //Set the shape of the cloud. 
  fill(255, 255, 255);
  ellipse(x4, y1-80, 40, 40);
  ellipse(x4+10, y1-80, 40, 30);
  ellipse(x4-10, y1-80, 40, 30);
  x4 += speed4;
  
  if (x4 > 640 || x4 < 0) {
    speed4 *= -1;
  }
}

void cloud5() { //Set the shape of the cloud. 
  fill(255, 255, 255);
  ellipse(x5, y1-100, 40, 40);
  ellipse(x5+10, y1-100, 40, 30);
  ellipse(x5-10, y1-100, 40, 30);
  x5 += speed5;
  
  if (x5 > 640 || x5 < 0) {
    speed5 *= -1;
  }
}
