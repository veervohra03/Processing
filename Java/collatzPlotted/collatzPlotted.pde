// Veer Vohra
// Collatz Plotted
// Java Ver 1.0

float theta = 0;
float n = noise(theta);
long r = (long) map(n, 0, 0.5, 10, width);
float fc = 0;
float px = 0;
float py = 0;

void setup(){
  size(1000, 800);
  smooth();
  fill(51);
}

void draw(){
  translate(width/2, height/2);

  while (r != 1) {
    r = collatz(r);
    fc += 10;
    fill(fc);
    float x = r * cos(theta);
    float y = r * sin(theta);
    theta += PI/10;
    noStroke();
    ellipse(x, y, 10, 10);
    stroke(0);
    line(px, py, x, y);
    px = x;
    py = y;
  }
}

long collatz(long n){
  if (n % 2 == 0){
    return n/2;
  } else {
    return 3*n + 1;
  }
}
