// Veer Vohra
// Distance Based Shader 2
// Java Ver 1.0

float max;

void setup(){
  size(1000, 800);
  smooth();
  noStroke();
  max = dist(0, 0, width, height);
}

void draw(){
  background(255);
  fill(51);
  for(int i = 0; i <= width; i+=20){
    for(int j = 0; j <= height; j+=20){
      float d = dist(mouseX, mouseY, i, j);
      float size = d/max * 100;
      ellipse(i, j, size, size);
    }
  }
}
