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
  r = 150;
  g = 130;
  b = 180;
  circleSize = 100;
  // .5/1, should have used random(255)
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
  // EXPLANATION: so they green never goes over 255 because it is always increasing.
  // .5/1, part of the way there! g mod 255 wraps g back to 0 when it increases over 255

  // Set fill color using our variables
  fill(r, g, b);
  // 1/1

  // Draw circles of different sizes (use circleSize variable).
  // One circle should be at center of canvas, the other following the mouse.
  circle(200, 200, circleSize++);
  circle(mouseX, mouseY, circleSize);
  // 1/2, this increases circleSize, which we don't necessarily want.
  // i just wanted circles to be different sizes. also should use height and width to center circle

  // Print current color values on separate lines
  float ("Red: " + r);
  float("Green: " + g);
  float ("Blue: " + b);
  // this doesnt print! need to do println("Green: " + g); for example
  // 0/2
}

void mousePressed() {
  // When mouse is pressed, give circleSize a random value
  // between 50 and 150
  circleSize = random(50, 150);
  // 1/1
  
}

// TOTAL: 6/10
