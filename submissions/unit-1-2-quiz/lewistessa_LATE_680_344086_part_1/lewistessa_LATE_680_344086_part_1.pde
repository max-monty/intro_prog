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
  r = color(140);
  g = color(30);
  b = color(40);
  circleSize = 100;
  // .5/1 wanted random(255) to get a number between 0-255
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
  // EXPLANATION: modulas which is the remained when divided
  // .5/1, correct, but wanted a bit more e.g. that it wraps green value to ensure its alwasy between 0-255

  // Set fill color using our variables
  fill(r, g, b);

  // Draw circles of different sizes (use circleSize variable).
  // One circle should be at center of canvas, the other following the mouse.
  circle(mouseX, mouseY, circleSize/10);
  circle(width/2, height/2, cirlceSize);
  // 2/2

  // Print current color values on separate lines
  r = color(10)("Red: " + r);
  g = color(80)("Green: " + g);
  b = color(150)("Blue: " + b);
  // just needed to add print so it looks like e.g. println("Red: " + r);
  // 0/2
}

void mousePressed() {
  // When mouse is pressed, give circleSize a random value
  // between 50 and 150
  circleSize = random(50, 150);
  // 1/1
}

// TOTAL: 7/10
