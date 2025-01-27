/**** DO NOW ****/

/*
 1) Run this code.
 2) Observe how changing the numbers affects the output.
 3) Can you figure out how it works? Explore.
*/ 

void setup() {
  size(800, 800);
  background(0);
  frameRate(200);
}

void draw() {
  float r = random(255);
  float g = random(255);
  float b = random(255);
  float x = random(width);
  float y = random(height);
  float size = random(10, 50);
  
  noStroke();
  fill(r, g, b, 100);
  circle(x, y, size);
}
