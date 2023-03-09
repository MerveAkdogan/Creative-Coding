/**
 * modified the original code of Simon Greenwold's "Move Eye".
 * The camera lifts up (controlled by mouseY) while looking at the same point.
 */

void setup() {
  size(500, 500, P3D);
  fill(204);
}

void draw() {
  lights();
  background(0);
  
  // Change height of the camera with mouseY
  camera(30.0, mouseX, mouseY, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         0.0, 1.0, 0.0); // upX, upY, upZ
  
  //noStroke();
  //box(90);
  //stroke(255);
  //line(-100, 0, 0, 100, 0, 0);
  //line(0, -100, 0, 0, 100, 0);
  //line(0, 0, -100, 0, 0, 100);
  
  //pushMatrix();
  //translate(130, height/2, 0);
  //rotateY(1.25);
  //rotateX(-0.4);
  //noStroke();
  //box(100);
  //popMatrix();
  pushMatrix();
  translate(-787, height*-3.49, -53);
  noFill();
  stroke(#31405F);
  sphere(664);
  popMatrix();


  pushMatrix();
  translate(-50, height*-0.01, -87);
  noFill();
  stroke(#094152);
  sphere(135);
  popMatrix();
  
  pushMatrix();
  translate(154, height*0.11, -72);
  noFill();
  stroke(#194F6B);
  sphere(40);
  popMatrix(); 
  
  pushMatrix();
  translate(88, height*0.22, -142);
  noFill();
  stroke(#C995A2);
  sphere(42);
  popMatrix();   
  
  pushMatrix();
  translate(112, height*0.11, 79);
  noFill();
  stroke(#C995A2);
  sphere(95);
  popMatrix();    

  saveFrame("output/sk_####.jpeg");  
  
}
