void setup() {
  // block
  size(640, 360);
  colorMode(RGB, 10, 255, 255, 1);
  background(0);
}

void draw() {
  // block

}

void mousePressed() {
  noStroke();
  fill(mouseX, mouseY, 200, .5);
  circle(mouseX, mouseY, 40);
}
