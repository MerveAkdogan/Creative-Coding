/**
 * Array Objects. 
 * 
 * Demonstrates the syntax for creating an array of custom objects. 
 */

int unit = 40;
int count;
Module[] mods;

void setup() {
  size(500, 500);
  smooth();
  noStroke();
  int wideCount = width / unit;
  int highCount = height / unit;
  count = wideCount * highCount;
  mods = new Module[count];

  int index = 0;
  for (int y = 0; y < highCount; y++) {
    for (int x = 0; x < wideCount; x++) {
      mods[index++] = new Module(x*unit, y*unit, unit/2, unit/2, random(0.05, 0.8), unit);
    }
  }
}

void draw() {
  background(#002D40);
  smooth();
  for (Module mod : mods) {
    mod.update();
    mod.display();
  }
  saveFrame("output/sk_####.jpeg");
}
