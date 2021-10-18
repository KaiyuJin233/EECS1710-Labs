float seconds = 0;
float minutes = 0;
float hours = 0;
int lastsecond = 0;
int lastminute = 0;
int lasthour = 0;

float size = 420;
float lengthsecond = 190;
float lengthminute = 150;
float lengthhour = 80;


void setup() {
  size(820, 640, P2D); 
  strokeWeight(5);
  background(255);
}

void draw() {
  
  int sec = second();
  int min = minute();
  int hour = hour();
  
  if (sec != lastsecond) {
    seconds = ((float) sec / 60) * TWO_PI;
    lastsecond = sec;
    println(hour + ": " + min + ": " + sec);
  }
  
  if (min != lastminute) {
    minutes = ((float) min / 60) * TWO_PI; 
    lastminute = min;
  }
  
  if (hour != lasthour) {
    hours = ((float) hour / 12) * TWO_PI;  
    lasthour = hour;
  }
  
  fill(#8EF20C);
  stroke(#B4F560);
  ellipse(width/2, height/2, size, size);
 
  stroke(#FEFF08);
  strokeWeight(3);
  for(int i=0; i<60; i++) {
    float tran = ((float) i/60) * TWO_PI;
    pushMatrix();
    translate(width/2, height/2);
    rotate(tran);
    line(0, 165, 0, 170);
    popMatrix();
  }
  
  ellipse(width/2, height/2, 20, 20);
  pushStyle();
  stroke(#08FA97);
  strokeWeight(4);
  fill(#08FA97);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(seconds);
  rect(0, 0, 0, -lengthsecond);
  stroke(255);
  strokeWeight(6);
  fill(255);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  rotate(minutes);
  rect(0, 0, 0, -lengthminute);
  stroke(#F0E7C6);
  strokeWeight(8);
  fill(#F0E7C6);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(hours);
  rect(0, 0, 0, -lengthhour);
  popMatrix();
   
  strokeWeight(4);
  fill(#B4F560);
  ellipse(width/2, height/2, 20, 20);
  numbers();
}

void numbers() {
  fill(#F6FF08);
  textSize(30);
  translate(width/2, height/2);
  text("12", -18, -size/2+30);
  text("6", -8, size/2-10);
  text("3", size/2-30, 12);
  text("9", -size/2+10, 12);
}
