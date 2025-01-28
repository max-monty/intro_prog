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
  b = mouseY;  // As mouse moves down, blue increases
  g = g + 1;     // Green constantly increases
  // 1/1
  
  // Fill in the blank below to explain the purpose/function of this line
  g = g % 255;
  // EXPLANATION: This is modulo.Modula makes sure that the shape stays on the screen within the boundaries.
  // .5/1, in this case, it just ensures the green value specifically stays within a range of 0-255 and wraps it around when it increases past 255
  
  // Set fill color using our variables
  fill(r, g, b);
  // 1/1
  
  
  // Draw circles of different sizes (use circleSize variable).
  // One circle should be at center of canvas, the other following the mouse.
  circle(mouseX, mouseY, 100);
  circle(mouseX/2, mouseY/2, 100);
  // .5/2, circles should be different sizes, and second circle should be centered on the screen
  
  // Print current color values on separate lines
  float("Red: " + r);
  float("Green: " + g);
  float("Blue: " + b);
  // 0/2: this doesnt print! just needed to do println("Red: " + r);
}

void mousePressed() {
  // When mouse is pressed, give circleSize a random value 
  // between 50 and 150
    circle(mouseX, mouseY, random(50,150));
  circleSize = random(50, 150);
  noStroke();
  fill(r, g, b);
  // 1/1
  // this works, but all you needed was circleSize = random(50, 150);
  
}

// TOTAL: 6/10
