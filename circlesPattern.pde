void setup() {
  size(400, 400);
  //size(400, 400, P2D);
  //size(400, 400, FX2D); better renderer
  //fullScreen();  size'ı comment yapıp kullan, P2D dediysen burada da yazman gerek
  //fullScreen(1);  fullScreen(3); fullScreen(SPAN); dersen farklı displayler söz konusu olduğunda hangisinde çıktı alacağını seçersin, ya da tüm ekranlara yayarsın span ile.
  //pixelDensity(2); for high resolution
  background(#C8C6B1); 
}

void draw() {
 
  fill(#737955); 
  ellipse(mouseX, mouseY, 15, 15);
  
  fill(#B2393E); 
  ellipse(mouseY, mouseX , 50, 50);  
  
  fill(#B2393E);   
  rect(mouseX, 100, 70, 20);  
  
  fill(#53242C);   
  ellipse(mouseX, 200, 30, 30); 

  fill(#737955);   
  rect(mouseX, 300, 50, 30); 
  
  fill(#53242C); 
  ellipse(100, mouseY, 30, 30);

  //fill(#CF514A); 
  //ellipse(200, mouseY, 30, 30);

  fill(#737955); 
  ellipse(200, mouseY, 30, 30);
  //rect(300, mouseY, 10, 70);

  
  //saveFrame("output/sk_####.jpeg");
}
//#CF514A  turunculu pembe
//#B2393E  pembe
//#737955  yeşil
//#53242C  koyu mor
//#C8C6B1  gri
//save("sketch001.png");
//saveFrame("output1/sk_####.png");
//
