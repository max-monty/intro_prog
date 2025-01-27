// My First Variables!
// Move your mouse to see how variables can create animation

// Integer variables (whole numbers)
int circleX = 100;        // X position of circle
int circleY = 100;        // Y position of circle
int circleSize = 50;      // Size of the circle
int backgroundBlue = 200; // Amount of blue in background

// Float variables (decimal numbers)
float speed = 2.5;        // Speed of color change
float wiggleAmount = 20;  // How much the circle wiggles

void setup() {
  size(400, 400);  // Create a window that's 400x400 pixels
}

void draw() {
  // The background color slowly changes
  background(100, 100, backgroundBlue);
  backgroundBlue = backgroundBlue + 1;

  // Make the circle follow the mouse, but wiggle a bit
  circleX = mouseX + int(sin(speed) * wiggleAmount);
  circleY = mouseY + int(cos(speed) * wiggleAmount);

  // Update the speed (makes the wiggle happen)
  speed = speed + 0.1;

  // Draw our bouncy circle
  fill(255, 200, 200);  // Pink color
  ellipse(circleX, circleY, circleSize, circleSize);

  // Draw text showing the current values
  fill(0);  // Black color for text
  textSize(20);
  text("circleX: " + circleX, 20, 30);
  text("circleY: " + circleY, 20, 60);
  text("speed: " + speed, 20, 90);
}

void mousePressed() {
  // When mouse is clicked, change the circle size
  circleSize = circleSize + 5;
}
