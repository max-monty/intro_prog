// Quiz Part 1: Moving Color Display
// Fill in the missing code to complete this interactive sketch

// Declare color component variables
float r;  // Red value 
float g;  // Green value
float b;  // Blue value
float circleSize;

void setup() {
  // Set the canvas size to 400x400
  __________(400, 400);
  
  // Initialize variables with random values between 0-255
  r = __________;
  g = __________;
  b = __________;
  circleSize = 100;
}

void draw() {
  // Set the background
  background(255);
  
  // Update color values based on mouse position
  r = mouseX/2;  // As mouse moves right, red increases
  b = __________;  // As mouse moves down, blue increases
  g = g + 1;     // Green constantly increases
  
  // Fill in the blank below to explain the purpose/function of this line
  g = g % 255;
  // EXPLANATION: __________
  
  // Set fill color using our variables
  fill(__________, __________, __________);
  
  // Draw circles of different sizes (use circleSize variable).
  // One circle should be at center of canvas, the other following the mouse.
  circle(__________, __________, __________);
  circle(__________, __________, __________);
  
  // Print current color values on separate lines
  __________("Red: " + r);
  __________("Green: " + g);
  __________("Blue: " + b);
}

void mousePressed() {
  // When mouse is pressed, give circleSize a random value 
  // between 50 and 150
  circleSize = random(__________, __________);
}
