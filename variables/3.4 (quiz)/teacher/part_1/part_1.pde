// Quiz Part 1: Moving Color Display - SOLUTION

float r;  
float g;  
float b;  
float circleSize;

void setup() {
  size(400, 400);  // 1 points
  
  // Correct random initialization (1 points)
  r = random(255);
  g = random(255);
  b = random(255);
  circleSize = 100;
}

void draw() {
  background(255);
  
  // Color value updates (1 points)
  r = mouseX/2;
  b = mouseY/2;
  g = g + 1;
  
  // Valid explanation (1 point)
  g = g % 255;
  // keeps value of green between 0-255 (and cycles through values)
  
  // Proper fill implementation (1 points)
  fill(r, g, b);
  
  // Correct shape drawing (2 points)
  circle(mouseX, mouseY, circleSize/2);
  circle(width/2, height/2, circleSize);
  
  // Prints to console on seperate lines (2 points)
  println("Red: " + r);
  println("Green: " + g);
  println("Blue: " + b);
}

void mousePressed() {
  // Correct random implementation (1 points)
  circleSize = random(50, 150);
}
