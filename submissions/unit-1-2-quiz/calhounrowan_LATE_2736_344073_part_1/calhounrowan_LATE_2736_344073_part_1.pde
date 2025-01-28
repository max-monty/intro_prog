// Quiz Part 1: Moving Color Display
// Fill in the missing code to complete this interactive sketch

// Declare color component variables
float r;  // Red value
float g;  // Green value
float b;  // Blue value
float circleSize;

void setup() {
  // Set the canvas size to 400x400
  size(400, 400); // 1/1

  // Initialize variables with random values between 0-255
  r = random(255);
  b = random(255);
  // .5/1 missing g initialization

  circleSize = 100;
}

void draw() {
  // Set the background
  background(255);

  // Update color values based on mouse position
  r = mouseX/2;  // As mouse moves right, red increases
  b = mouseY/2;  // As mouse moves down, blue increases
  g = g + 1;     // Green constantly increases
  // 1/1

  // Fill in the blank below to explain the purpose/function of this line
  g = g % 255;
  // EXPLANATION: its changinf the variable for the color greeen to be the percent of 255, the green cosntantly increases as skecth goes on
  // .5/1, partially, g is not a percent of 255, the mod ensures its within a range of 0-255

  // Set fill color using our variables
  fill(r, g, b);
  // 1/1

  // Draw circles of different sizes (use circleSize variable).
  // One circle should be at center of canvas, the other following the mouse.
  circle(mouseX, mouseY, circleSize);
  circle(200, 200, circleSize);
  // 1/2, circles are not different sizes, also should use width and height to center the circle

  // Print current color values on separate lines
  r = color (int("Red: " + r));
  g= color (int("Green: " + g));
  b = color(int ("Blue: " + b));
  // 0/2 this doees not print to the console
}

void mousePressed() {
  // When mouse is pressed, give circleSize a random value
  // between 50 and 150
  circleSize = random(50, 150);
  // 1/1
}

// TOTAL: 6/10
