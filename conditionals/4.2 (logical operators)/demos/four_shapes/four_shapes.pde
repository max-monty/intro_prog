void setup() {
  //size(400, 400);
  fullScreen();
  strokeWeight(2);
}

void draw() {
  background(220);
  stroke(0);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  
  if (mouseX < width/2 && mouseY < height/2) {
    fill(255, 100, 100);
    circle(width/2, height/2, 100);
  } else if (mouseX >= width/2 && mouseY < height/2) {
    fill(100, 255, 100);
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
  } else if (mouseX < width/2 && mouseY >= height/2) {
    fill(100, 100, 255);
    triangle(
      width/2, height/2 - 50,
      width/2 - 50, height/2 + 50,
      width/2 + 50, height/2 + 50
    );
  } else {
    fill(255, 255, 100);
    quad(
      width/2, height/2 - 50,      // top point
      width/2 + 50, height/2,      // right point
      width/2, height/2 + 50,      // bottom point
      width/2 - 50, height/2       // left point
    );
  }
}
