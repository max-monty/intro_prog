// Ball to infinity

// DO NOW: Make this ball bounce back and forth :)
// If you are stuck, at least make it bounce off the right edge

float x = 0;
float speed = 4;
float radius = 24;

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  noStroke();
  fill(255);
  
  circle(x, height/2, radius*2);
  
  x += speed;
}
