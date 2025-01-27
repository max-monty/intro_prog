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
  __________(500, 500);

  // Initialize all variables
  x = width/2;
  y = height/2;
  xspeed = __________; // Choose a number between 1-5
  yspeed = __________; // Choose a number between 1-5
  size1 = 50;
  size2 = 25;
}

void draw() {
  // Create motion blur effect with transparent background
  fill(255, 30);
  // Draw a rectangle the size of the entire canvas using width and height
  rect(0, 0, __________, __________);

  // Update positions using speed variables
  x = __________;
  y = __________;

  // Wrap positions using modulo
  x = x % width;
  y = y % height;

  // Create colors based on position
  // Use x and y variables to set R and G values for the fill
  fill(__________/2, __________/2, 200, 200);

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
  size1 = random(__________, __________);
  size2 = random(__________, __________);
  
  // Give speed new random values between 1 and 5
  xspeed = random(__________); 
  yspeed = random(__________); 
}
