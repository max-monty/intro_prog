// Variables for circle properties
float circleSize = 50;
color circleColor = color(255, 100, 100);  // Start with pink

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  
  // Draw circle at mouse position
  fill(circleColor);
  noStroke();
  ellipse(mouseX, mouseY, circleSize, circleSize);
}

void mousePressed() {
  // When clicked: change color and size
  circleColor = color(random(255), random(255), random(255));
  circleSize = random(25, 75);
}
