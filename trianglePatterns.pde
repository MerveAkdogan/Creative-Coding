//modified the original code of Ira Greenberg "Triangle Strip". 


int x;
int y;
float outsideRadius = 150;
float insideRadius = 100;

void setup() {
  size(500, 500);
  background(#C4E86B);
  x = width/2;
  y = height/2;
}

void draw() {
  background(#C4E86B);

  
  
  int numPoints = (int)(map(mouseX, 0, width, 6, 60));
  float angle = 0;
  float angleStep = 180.0/numPoints;
  
  
  fill(#00BCB4);
  beginShape(TRIANGLE_STRIP); 
  for (int i = 0; i <= numPoints; i++) {
    float px = y + cos(radians(angle)) * outsideRadius;
    float py = x + sin(radians(angle)) * outsideRadius;
    angle += angleStep;
    vertex(px, py);
    px = y + cos(radians(angle)) * insideRadius*3;
    py = x + sin(radians(angle)) * insideRadius*3;
    vertex(px, py); 
    angle += angleStep;
  }
  endShape();
  
  
  fill(#FF4747);  
  beginShape(TRIANGLE_STRIP); 
  for (int i = 0; i <= numPoints; i++) {
    float px = x + cos(radians(angle)) * outsideRadius;
    float py = y + sin(radians(angle)) * outsideRadius;
    angle += angleStep;
    vertex(px, py);
    px = x + cos(radians(angle)) * insideRadius*2;
    py = y + sin(radians(angle)) * insideRadius*2;
    vertex(px, py); 
    angle += angleStep;
  }
  endShape();
  

  fill(#FF4747);
  beginShape(TRIANGLE_STRIP); 
  for (int i = 0; i <= numPoints; i++) {
    float px = y + cos(radians(angle)) * outsideRadius;
    float py = x + sin(radians(angle)) * outsideRadius;
    angle += angleStep;
    vertex(px, py);
    px = y + cos(radians(angle)) * insideRadius/2;
    py = x + sin(radians(angle)) * insideRadius/2;
    vertex(px, py); 
    angle += angleStep;
  }
  endShape();  

  fill(#00BCB4);
  beginShape(TRIANGLE_STRIP); 
  for (int i = 0; i <= numPoints; i++) {
    float px = y + cos(radians(angle)) * outsideRadius;
    float py = x + sin(radians(angle)) * outsideRadius;
    angle += angleStep;
    vertex(px, py);
    px = y + cos(radians(angle)) * insideRadius;
    py = x + sin(radians(angle)) * insideRadius;
    vertex(px, py); 
    angle += angleStep;
  }
  endShape();
  
  
  //saveFrame("output/sk_####.png");
}
