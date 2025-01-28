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
  g = random(255);
  b = random(255);
  circleSize = 100;
  // 1/1
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
  // EXPLANATION: Once g become over 255, it will just appear as white, so this code makes it so that every time it hits 255 it resets to 0 again
  // 1/1
  
  // Set fill color using our variables
  fill(r, g, b, 200);
  // 1/1
  
  // Draw circles of different sizes (use circleSize variable).
  // One circle should be at center of canvas, the other following the mouse.
  circle(200, 200, circleSize-20);
  circle(mouseX, mouseY, circleSize+50);
  // 2.5/2 should use width and height variables to center circle
  
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

// TOTAL: 9.5/10
