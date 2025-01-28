// Ball turning around

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
  
  if (x+radius > width) {
    speed = -4;
  } 

}
