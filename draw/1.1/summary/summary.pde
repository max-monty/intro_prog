void setup() {
  size(800, 600);
  
  //point(400, 300);
  
  //line(100, 500, 700, 100);
  //triangle(100, 100, 400, 500, 700, 300);
  //quad(100, 100, 200, 500, 600, 450, 700, 200);
  //rect(100, 100, 600, 400);
  //ellipse(400, 300, 400, 400);
}

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);  
}
