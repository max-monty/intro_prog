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
  yspeed = 2; // Choose a number between 1-5
  size1 = 50;
  size2 = 25;
  // 1/1
}

void draw() {
  // Create motion blur effect with transparent background
  fill(255, 30);
  // Draw a rectangle the size of the entire canvas using width and height
  rect(0, 0, 600, 600); // .5/1 should use height and width variables

  // Update positions using speed variables
  x = xspeed;
  y = yspeed;
  // 1/2 this overwrites x and y with speed, we want to update the values with
  // x += xspeed or x = x + xspeed (same thing)

  // Wrap positions using modulo
  x = x % width;
  y = y % height;

  // Create colors based on position
  // Use x and y variables to set R and G values for the fill
  fill(mouseX/2, mouseY/2, 200, 200);
  // .5/1 should have used x and y values 

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
  xspeed = random(3); 
  yspeed = random(3); 
  // 3/4 should have been random(1, 5) yours is random between 0-3
}

// TOTAL: 7/10, 13/20
