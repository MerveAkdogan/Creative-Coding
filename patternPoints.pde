//modified the original code of Daniel Shiffman's "Pointillism". 


PImage img;
int smallPoint, largePoint;

void setup() {
  size(400, 400);
  img = loadImage("hand.jpeg");
  smallPoint = 4;
  largePoint = 40;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() { 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = (int)(random(img.width));
  int y = (int)(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 255);
  ellipse(x, y, pointillize, pointillize);
  
  saveFrame("output/sk_####.jpeg");
}
