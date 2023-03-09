void setup() {
  size(400, 400);
  smooth();
  noStroke();
}

void draw() {
  background(255);
  fill(0);
  pushMatrix();  // save things for the background pattern
    translate(width/2, height/2);  // move to middle of screen
    drawStar();  // draw the background
  popMatrix();
  
  pushMatrix();  // save things for the foreground pattern
    translate(mouseX, mouseY);  // move to the mouse's location
    rotate(PI * frameCount/90);  // rotate over time
    drawStar();  // draw the foreground
  popMatrix();
  //saveFrame("output/sk_####.jpeg");
}

void drawStar() {
  int numSpokes = 56;  // draw this many radiating spokes
  for (int i=0; i<numSpokes; i++) {
     float t0 = map(i, 0, numSpokes-1, 0, TWO_PI); // starting angle
     float t1 = t0 + (TWO_PI/(2*numSpokes));       // ending angle
     arc(0, 0, 506, 746, t0, t1);                // draw this stroke
  }
}
