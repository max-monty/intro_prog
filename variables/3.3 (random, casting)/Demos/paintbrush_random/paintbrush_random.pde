/*

Demo Topics
- multi-variable declration
- color variables
- random
- casting
- global vs. local variables
- statements: functions, assignment

*/

// int r, g, b;
float r, g, b;
//color c = color(random(255), random(255), random(255), random(255));

void setup() {
  size(640, 320);
  background(255);

  //r = random(255);
  //g = random(255);
  //b = random(255);
}

void draw() {
  r = random(255);
  g = random(50, 150);
  b = random(150, 255);

  fill(r, g, b);
  //fill(c);
  noStroke();
  circle(mouseX, mouseY, random(10, 50));
}

void mousePressed() {
  background(255);

  //r = random(255);
  //g = random(255);
  //b = random(255);

  //c = color(random(255), random(255), random(255), random(255));
}
