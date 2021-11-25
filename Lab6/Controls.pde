int num = 1;

void keyPressed() {
  switch(keyCode) {
    case UP:
      adaptive += num;
      break;
    case DOWN:
      adaptive -= num;
      break;
  }
  adaptive = constrain(adaptive, -30, 4);
  //println("adaptive: " + adaptive);
}

  
