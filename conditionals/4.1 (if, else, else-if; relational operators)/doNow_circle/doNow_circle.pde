float xPos;
float yPos;

void setup() {
  size(400, 400);
  xPos = 0;
  yPos = height/2;
}

void draw() {
  background(0);
  circle(xPos, yPos, 20);
  xPos += 1;
}

void mousePressed() {
  xPos = 0;
}
  
