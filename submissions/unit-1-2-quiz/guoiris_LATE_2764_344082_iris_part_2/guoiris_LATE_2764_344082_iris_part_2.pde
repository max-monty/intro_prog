// Quiz Part 2: Moving Shapes Pattern
// Fill in the missing code to create a moving pattern

// Position variables
float x;
float y;
float xspeed;
float yspeed;
float size1;
float size2;

void setup() {
  // Create a 500x500 canvas
  size(500, 500); // 1/1

  // Initialize all variables
  x = width/2;
  y = height/2;
  xspeed = 2; // Choose a number between 1-5
  yspeed = 3; // Choose a number between 1-5
  size1 = 50;
  size2 = 25;
  // 1/1
}

void draw() {
  // Create motion blur effect with transparent background
  fill(255, 30);
  // Draw a rectangle the size of the entire canvas using width and height
  rect(0, 0, width, height); // 1/1

  // Update positions using speed variables
  x = x+xspeed;
  y = y+yspeed;
  // 2/2

  // Wrap positions using modulo
  x = x % width;
  y = y % height;

  // Create colors based on position
  // Use x and y variables to set R and G values for the fill
  fill(x, y, 200, 200);
  // 1/1

  // Draw pattern of shapes
  circle(x, y, size1);
  circle(width-x, height-y, size2);
  square(x, height/2, size2);
  square(width/2, y, size2);
}

void mousePressed() {
  // Move shapes to mouse position
  x = mouseX;
  y = mouseY;

  // Give sizes new random values between 10 and 100
  size1 = random(10, 100);
  size2 = random(10, 100);
  
  // Give speed new random values between 1 and 5
  xspeed = random(1,5); 
  yspeed = random(1,5); 
  
  // 4/4
}

// TOTAL: 10/10, 18/20
