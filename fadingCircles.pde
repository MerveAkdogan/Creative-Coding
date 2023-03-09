//Move the mouse across the screen to change the position of the circles.
 
int num = 60;
float mx[] = new float[num];
float my[] = new float[num];

void setup() {
  size(500, 500);
  noStroke();
 
}

void draw() {
  background(#C06C84); 
  
  // Cycle through the array, using a different entry on each frame. 
  // Using modulo (%) like this is faster than moving all the values over.
  int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  
  for (int i = 0; i < num; i++) {
    // which+1 is the smallest (the oldest in the array)
    int index = (which+1 + i) % num;
    fill(#F67280, 153);
    ellipse(mx[index], my[index], i+20, i+20);
    fill(#F8B195, 153);
    ellipse(my[index], mx[index],  i+20, i+20);
    fill(#355C7D,153);
    ellipse(my[index]+70, mx[index]+70,  i+50, i+50);
    fill(#6C5B7B, 153);
    ellipse(mx[index]+70, my[index]+70, i+50, i+50);
  }
  saveFrame("output/sk_####.jpg");
}
