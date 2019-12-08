// Veer Vohra
// Refraction
// Java Ver 1.0

float i, r, r2, x, y, ri, rx1, ry1, rx2, ry2, rwidth, rheight;

void setup(){
  size(1000, 800);
  i = radians(120);
  ri = 1.5;
  rwidth = 350;
  rheight = 600;
  rx1 = -rwidth/2;
  rx2 = rwidth/2;
  ry1 = 0;
}

void draw(){
  background(0);
  stroke(255);
  strokeWeight(3);
  noFill();
  rectMode(CENTER);
  translate(width/2, height/2);
  rect(0, 0, rwidth, rheight);
  stroke(0, 255, 220);
  strokeWeight(2);
  
  translate(rx1, 0);
  x = 400 * cos(i);
  y = 400 * sin(i);
  line(0, 0, x, y);
  
  r = -asin(sin(i) / ri);
  float tl = rwidth / cos(r);
  rx2 = tl * cos(r);
  ry2 = tl * sin(r);
  line(0, 0, rx2, ry2);
  
  float ydist = ry2 - ry1;
  translate(rwidth, ydist);
  x = -400 * cos(i);
  y = -400 * sin(i);
  line(0, 0, x, y);
  
}
