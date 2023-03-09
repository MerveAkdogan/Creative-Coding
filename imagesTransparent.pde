// Move the mouse left and right across the image to change its position.

PImage img;
float offset = 0;
float easing = 0.05;

void setup() {
  size(640, 640);
  img = loadImage("binalar.jpeg");  // Load an image into the program
  background(31); 
}

void draw() { 
  background(31); 
  image(img, 0, 0);  // Display at full opacity
  float dx = (mouseX-img.width/2) - offset;
  offset += dx * easing; 
  tint(255, 127);  // Display at half opacity
  image(img, offset, 0);
  
  tint(255, 127);  // Display at half opacity
  image(img, 0, offset);  
 
  tint(255, 127);  // Display at half opacity
  image(img, -offset, 0 );  
  
  //tint(255, 127);  // Display at half opacity
  //image(img, 0, -offset); 
  
  saveFrame("output/sk_####.jpg");
}
