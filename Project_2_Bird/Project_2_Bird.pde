PVector position;
PVector position1down, position2up;
float bird_speed = 0;  
PImage bird[];
PImage background;
PImage over;
int birdframe = 0;
//boolean space = true;
boolean check = true;
Pipe pipe;

void setup() {
  size(300, 500, P2D);
  pipe = new Pipe(0, 0);
  position = new PVector(0, 0);
  background = loadImage("data/forest.jpg");
  background.resize(width*2, height);
  over = loadImage("data/over.jpg");
  over.resize(width, height);
  bird = new PImage[3];
  for(int i = 0; i < bird.length; i++) {
  bird[i] = loadImage("data/birds_" + i + ".png");  } 
  image(background, 0, 0);
  fill(255);
  textSize(20);
  text("Press Space to Start", width/5, height/2);
}

void draw() {
  if (key == ' ') {  
  if (frameCount%3 == 0) { 
      if(check){
      pipe.run();
      update();
      bird_speedcontrol();
        if (mousePressed) {
         bird_speed -= 15;
          }
         } else if (!check) {
         background(over); 
    } 
   }
  }
 }

void update() {
  position.x = width/2 - bird[birdframe].width/2;
  position.y = height/2 - bird[birdframe].height/2 + bird_speed;
  image(bird[birdframe], position.x, position.y);
  birdframe++;
  birdframe %= bird.length;
}

void bird_speedcontrol() {
  bird_speed += 5;
}

//image link: https://pan.baidu.com/s/1c130V7M#list/path=%2FFlappy%20Bird
 
