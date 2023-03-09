/**
 * Mixture Grid  
 * modified from an example by Simon Greenwold. 
 * Display a 2D grid of boxes with three different kinds of lights. 
 */

void setup() {
  size(640, 640, P3D);
  noStroke();
}

void draw() {
  defineLights();
  background(0);
  
  for (int x = 0; x <= width; x += 160) {
    for (int y = 0; y <= height; y += 160) {
      pushMatrix();
      translate(x, y);
      rotateY(map(mouseX, 0, width, 0, PI));
      rotateX(map(mouseY, 0, height, 0, PI));
      box(480);
      popMatrix();
    }
  }
  saveFrame("output/sk_####.jpeg");
}

void defineLights() {
  // Orange point light on the right
  pointLight(106,29,47,   // Color150, 100, 0
             200, -150, 0); // Position

  // Blue directional light from the left
  directionalLight(53,76,60, // Color0, 102, 255,
                   1, 0, 0);    // The x-, y-, z-axis direction

  // Yellow spotlight from the front
  spotLight(222, 164, 80,  // Color255, 255, 109,
            0, 40, 200,     // Position
            0, -0.5, -0.5,  // Direction
            PI / 2, 2);     // Angle, concentration
}
