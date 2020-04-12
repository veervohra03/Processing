// Veer Vohra
// Noise Circles
// Java Ver 1.0

float theta = 0;
float minR = random(100, width-10);

void setup(){
  size(1000, 800);
  smooth();
  noStroke();
  fill(51);
}

void draw(){
  translate(width/2, height/2);
  float n = noise(theta);
  float r = map(n, 0, 1, minR, minR+50);
  float x = r * cos(theta);
  float y = r * sin(theta);
  theta += PI/100;
  ellipse(x, y, 1, 1);
}
