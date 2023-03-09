float AngleStart = 0;  // where outer ring starts
float AngleBump = 0;   // added rotation of each ring
float RingThickness = 50; // how thick each ring is
float Speed = 1;       // how fast everything spins
color color1 = #A7767C;   //KOYU PEMBE
color color2 = #E6B5B8 ; //PEMBE

  
void setup() {
  size(400, 400);  // make a graphics window
  smooth();        // draw everything nicely
  noStroke();      // don't draw outlines of shapes
}

void draw() {
  background(color2);     // background is blue
  float diam = width;        // starting diameter
  float angle = AngleStart;  // starting angle
  while (diam > 0) {         // work our way inwards
    fill(color1);       // select orange color
    ellipse(200, 200, diam, diam);  // draw a disk
    fill(color2);
    ellipse(200, 200, diam/2, diam/2);
    fill(color2);     // select blue color
    // now draw half a disk in blue
    arc(200, 200, diam, diam, angle, angle+PI);
    diam -= RingThickness;  // next circle is smaller
    angle += Speed*AngleBump;  // rotate a little more
  }
  AngleStart += Speed*.01;  // next frame, start here
  AngleBump += Speed*.005;  // and change the speed of rotation
  
  saveFrame("output/sk_####.jpeg");
}

void keyTyped() {
  if (key == 'r') RingThickness = max(RingThickness-10, 10);
  if (key == 'R') RingThickness += 10;
  if (key == 's') Speed = max(Speed-.1, .1);
  if (key == 'S') Speed += .1;
}      
