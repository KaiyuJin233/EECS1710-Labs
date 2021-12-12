import themidibus.*;
import processing.sound.*;
AudioIn in;
MidiBus myBus;
Amplitude ampl; 
int channel = 0;
int pitch, velocity;

ArrayList<Sound> s;
float x;
ArrayList<Stroke> strokes;
int marktime = 0;
int timeout = 100;

void setup() {
  size(1280, 960, P2D);
  setupXYscope();
  strokes = new ArrayList<Stroke>();
  colorMode(HSB,360,100,100);
  background(0);
  MidiBus.list();
  myBus = new MidiBus(this, -1, 2); 
  s = new ArrayList<Sound>();
  in = new AudioIn(this, 0);
  in.play(); 
  ampl = new Amplitude(this); 
  ampl.input(in);
  
}

void draw() {
  
  float sound = ampl.analyze() *2000; 
  stroke(sound, 127, 127); 
  strokeWeight(2);
  translate(width/2,height/2);
  rotate(radians(x +=sound));
  rectMode(CENTER);
  rect(0,0,sound *2,sound *2); 
  line(sound *2, 20, 30, sound *2);
  
  for (int i=s.size()-1; i>=0; i--) {
    Sound s1 = s.get(i);
    if (s1.alive) {
      s1.run();
    } else {
      s.remove(i);
    }
  }
   updateXYscope();
  
  for (int i=strokes.size()-1; i >= 0; i--) {
    Stroke stroke = strokes.get(i);
    stroke.run();
    if (!stroke.alive) strokes.remove(i);
  }
  
  if (millis() > marktime + timeout) {
    xy.clearWaves();
  }
    
}

void mouseDragged() {
  pitch = int(map(mouseY, height, 0, 0, 127));
  velocity = int(map(mouseX, 0, width, 0, 127));
  myBus.sendNoteOn(channel, pitch, velocity); 
  s.add(new Sound(mouseX, mouseY, velocity));
  
  xy.line(mouseX, mouseY, pmouseX, pmouseY);
  
  if (strokes.size() > 0) {
    Stroke stroke = strokes.get(strokes.size()-1);
    stroke.points.add(new PVector(mouseX, mouseY));
    stroke.timestamp = millis();
  }

  marktime = millis();
}

void mouseReleased() {
  myBus.sendNoteOff(channel, pitch, velocity);
}

void keyPressed() {
  if (keyCode == 8) {
    xy.clearWaves();
  }
}

void mousePressed() {
  Stroke stroke = new Stroke();
  strokes.add(stroke);
}
