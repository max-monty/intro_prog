// Quiz Part 2: Moving Shapes Pattern - SOLUTION

float x;
float y;
float xspeed;
float yspeed;
float size1;
float size2;

void setup() {
  size(500, 500);  // 1 points
  
  // Correct initialization (1 points)
  x = width/2;
  y = height/2;
  xspeed = 3;  // Any number between 1-5 is acceptable
  yspeed = 2;  // Any number between 1-5 is acceptable
  size1 = 50;
  size2 = 25;
}

void draw() {
  // Correct background effect (1 points)
  fill(255, 30);
  rect(0, 0, width, height);
  
  // Position updates (2 points)
  x = x + xspeed;
  y = y + yspeed;
  x = x % width;
  y = y % height;
  
  // Color implementation (1 points)
  fill(x/2, y/2, 200, 200);
  
  circle(x, y, size1);
  circle(width-x, height-y, size2);
  square(x, height/2, size2);
  square(width/2, y, size2);
}

void mousePressed() {
  // Correct mouse interaction (4 points)
  x = mouseX;
  y = mouseY;
  size1 = random(10, 100);
  size2 = random(10, 100);
  xspeed = random(1, 5); 
  yspeed = random(1, 5); 
}
