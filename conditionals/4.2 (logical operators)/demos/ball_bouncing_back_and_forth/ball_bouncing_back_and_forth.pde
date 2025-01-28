// Ball bouncing left and right

float x = 0;          // x position 
float speed = 2;      // speed of movement
float radius = 24;    // radius of the ball

void setup() {
  size(640, 360);
}

void draw() {
  // Clear background
  background(0);
  
  // Draw the ball
  noStroke();
  fill(255);
  circle(x, height/2, radius*2);
  
  // Move the ball
  x += speed;
  
  // Bounce if hitting right edge
  if (x + radius > width) {
    x = width - radius;  // Place ball exactly at edge
    speed *= -1;         // Reverse direction
  }
  
  // Bounce if hitting left edge
  if (x - radius < 0) {
    x = radius;          // Place ball exactly at edge
    speed *= -1;         // Reverse direction
  }
}
