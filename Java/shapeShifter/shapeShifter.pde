// Veer Vohra
// Shape Shifter
// Java Ver 1.0

int n = 30;
float radius = 200;
float t = TWO_PI/n;
float x, y;

void setup(){
  size(1000, 800);
  noStroke();
  frameRate(5);
}

void draw(){
  translate(width/2, height/2);
  background(220);
  fill(51);
  
  beginShape();
  for (int i = 0; i <= n; i++){
    x = radius * cos(TWO_PI*i/n + t);
    y = radius * sin(TWO_PI*i/n + t);
    vertex(x, y);
  }
  endShape();
  
  n -= 1;
  if (n <= 2){
    n = 30;
  }

}
