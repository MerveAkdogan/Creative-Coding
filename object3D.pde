/**
 * 
 * Move the mouse the change the direction of the light.
 */

void setup() {
  size(640, 640, P3D);
  noStroke();
  fill(204);
}

void draw() {
  noStroke(); 
  background(0); 
  float dirY = (mouseY / float(height) - 0.5) * 2;
  float dirX = (mouseX / float(width) - 0.5) * 2;
  directionalLight(124,105,10, -dirX, -dirY, -1); // 106,29,47
  //translate(width/2 - 100, height/2, 0); 
  //sphere(50); 
  
//  for (int i = 0; i < 500; i = i+100) {
//    pushMatrix();
//    translate(i, i, 0);
//    sphere(50);
//    popMatrix();
//}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(i, 50, 0);
    sphere(70);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(50, i, 0);
    sphere(mouseX/10);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(i, 150, 0);
    sphere(70);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(150, i, 0);
    sphere(mouseY/10);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(i, 250, 0);
    sphere(70);
    popMatrix();
}
  for (int i = 0; i <700; i = i+100) {
    pushMatrix();
    translate(250, i, 0);
    sphere(mouseX/10);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(i, 350, 0);
    sphere(70);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(350, i, 0);
    sphere(mouseY/10);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(i, 450, 0);
    sphere(70);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(450, i, 0);
    sphere(mouseX/10);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(i, 550, 0);
    sphere(70);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(550, i, 0);
    sphere(mouseY/10);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(i, 650, 0);
    sphere(70);
    popMatrix();
}
  for (int i = 0; i < 700; i = i+100) {
    pushMatrix();
    translate(650, i, 0);
    sphere(mouseX/10);
    popMatrix();
}
//saveFrame("output/sk_####.jpeg");
}
