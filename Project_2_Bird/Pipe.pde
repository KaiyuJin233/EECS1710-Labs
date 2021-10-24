class Pipe {
   
  float pipe_random = 0; 
  int background_position = 0;
  PImage background;
  PImage bird;
  PImage pipe1down, pipe2up;
  int pipe_gap = 120;
  
  
  Pipe(float _x, float _y) {
  position1down = new PVector(_x, _y);
  position2up = new PVector(_x, _y);
  background = loadImage("data/forest.jpg");
  background.resize(width*2, height);
  bird = loadImage("data/birds_0.png");
  pipe1down = loadImage("data/pipe1.png");
  pipe2up = loadImage("data/pipe2.png");
  }
  
  void background_loop() {
  image(background, background_position, 0);
  image(background, background_position + width, 0);
  background_position -=5;
  background_position %= width;
  }
  
  void pipe() {  
  if (background_position >= -5) {
    pipe_random = int(random(0, 150));
  }
  position1down.x = width + background_position;
  position1down.y = height/2 + pipe_random - pipe2up.height - pipe_gap;
  position2up.x = width + background_position;
  position2up.y = height/2 + pipe_random;
  
  fill(#23C2E8);
  image(pipe1down, position1down.x, position1down.y);
  image(pipe2up, position2up.x, position2up.y);
  }  
  
void checking() {
   
   float check_x = position.x + bird.width;
   float check_y = position.y + bird.height;
   
   if (check_y > background.height || position.y < 0) {
    check = false;
    } else if (check_y >= position2up.y && (check_x >= position2up.x && check_x <= position2up.y + pipe2up.width)) {
    check = false;
    } else if (check_y <= position1down.y + pipe1down.height + bird.height && (check_x >= position1down.x && check_x <= position1down.x + pipe1down.width)) {
    check = false;
    } else {
    check = true;
    }
}

  void draw() {
    background_loop();
    pipe();
    checking();
  }
  
  void run() {
  draw();
  }
}
//image link: https://tse1-mm.cn.bing.net/th/id/OIP-C.Id5O7Gd7w_E_x7OIvVcNfgHaEa?pid=ImgDet&rs=1
