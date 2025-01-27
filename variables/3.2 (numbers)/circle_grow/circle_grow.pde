int size = 20;
float x;
float y;

void setup() {
  size(400, 400);
  x = random(width);
  y = random(height);
}

void draw() {
  background(255);
  circle(mouseX, mouseY, size);
  size = size + 1;
}
