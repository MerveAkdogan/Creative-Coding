
 // Move the mouse to position the shape. 

PImage img;

void setup() {
  size(500, 500);
  img = loadImage("gun_b.png");
  noSmooth();
  fill(126);
  //background(#355C7D);
}

void draw() {
  //if (mousePressed) {
  //  stroke(#6C5B7B);
  //} else {
  //  stroke(#F8B195);
  //}
  int x = (int)(random(img.width));
  int y = (int)(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 120);
  rect(x, y, mouseX, mouseY);
  rect(x, y, mouseX, mouseY-66);
  rect(x, y, mouseX-66, mouseY);
  //ellipse(x, y, mouseX, mouseX);
  
  saveFrame("output/sk_####.jpeg");
}
