// Quiz Part 1: Moving Color Display
// Fill in the missing code to complete this interactive sketch

// Declare color component variables
float r;  // Red value 
float g;  // Green value
float b;  // Blue value
float circleSize;

void setup() {
  // Set the canvas size to 400x400 - 1/1
  size(400, 400); 
  
  // Initialize variables with random values between 0-255 - 0/1 did not use random() function
  r = 200;
  g = 200;
  b = 255;
  circleSize = 100;
}

void draw() {
  // Set the background
  background(255);
  
  // Update color values based on mouse position - 1/1
  r = mouseX/2;  // As mouse moves right, red increases
  b = mouseY/2;  // As mouse moves down, blue increases
  g = g + 1;     // Green constantly increases
  
  // Fill in the blank below to explain the purpose/function of this line
  g = g % 255;
  // EXPLANATION: This code will keep increasing the varible g while staying below 255
  // 1/1
  
  // Set fill color using our variables - 1/1
  fill(r, g, b);
  
  // Draw circles of different sizes (use circleSize variable).
  // One circle should be at center of canvas, the other following the mouse.
  circle(width/2, height/2, circleSize);
  circle(mouseX, mouseY, circleSize);
  // 2/2
  
  // Print current color values on separate lines
  println("Red: " + r);
  println("Green: " + g);
  println("Blue: " + b);
  // 2/2
}

void mousePressed() {
  // When mouse is pressed, give circleSize a random value 
  // between 50 and 150
  circleSize = random(50, 150);
  // 1/1
}

// TOTAL: 9/10
