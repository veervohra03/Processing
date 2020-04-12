// Veer Vohra
// Symmetry
// Java Ver 1.0

float x, y;

void setup(){
  size(1000, 800);
  background(220);
  noStroke();
}

void draw(){
  fill(66+mouseX/3, 224+mouseY/3, 225-mouseY/9);
}

void mousePressed(){
  x = mouseX;
  y = mouseY;
  ellipse(mouseX, mouseY, 25, 25);
  float sX = width/2 + (width/2 - x);
  ellipse(sX, mouseY, 25, 25);
}
