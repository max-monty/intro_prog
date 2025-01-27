// 1. Declare the variable!
float circleX;
color circleColor = color(255, 255, 255);

void setup() {
  size(640, 360);
  
  // Initialize the variable!
  //circleX = 320;
}

void draw() {
  
  background(0);
  noStroke();
  fill(circleColor);
  // 3. Use the Variable
  circle(circleX, 180, 50);
  
  circleX += 5;
  
}

void mousePressed() {
  circleX = 0;
  circleColor = color(random(255), random(255), random(255));
  
}

// declaration: type name;
// initalization name = ____ ;
