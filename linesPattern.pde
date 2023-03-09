
//Move the mouse to position the shape. 
//Press the mouse button to invert the color. 


void setup() {
  size(500, 500, P3D);
  noSmooth();
  fill(126);
  background(102);
}

void draw() {
  if (mousePressed) {
    stroke(255);
  } else {
    stroke(0);
  }
  line(mouseX-200, mouseY, mouseX+200, mouseY, mouseX, mouseY);
  line(mouseX, mouseY, mouseX, mouseY, 100, 100);
  //line(mouseX, mouseY-66, mouseX, mouseY+66, 5, 5);
  line(mouseY-77, mouseX,  mouseY+77, mouseX, mouseY, mouseX);
  
  saveFrame("output/sk_####.jpeg");
}
