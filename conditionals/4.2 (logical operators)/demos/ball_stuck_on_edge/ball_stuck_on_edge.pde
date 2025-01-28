// Ball stuck on edge

float x = 0;
float speed = 20;
float radius = 24;

void setup() {
  size(640, 360);
  frameRate(2);
}

void draw() {
  background(0);
  noStroke();
  fill(255);
  
  
  
  if (x+radius < width) {
    x += speed;
  } else {
    x -= speed;
  }
  
  circle(x, height/2, radius*2);

}
