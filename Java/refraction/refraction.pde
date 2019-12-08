// Veer Vohra
// Refraction - Snell's Law
// Java Ver 1.0

float i, r, x, y, ri, rwidth, rheight;
// i = angle of incidence // r = angle of refraction // ri = refractive index
// rwidth = denser medium width // rheight = denser medium height

void setup(){
  size(1000, 800);
  ri = 1.5;
  rwidth = 350;
  rheight = 600;
  noFill();
  rectMode(CENTER);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  stroke(255);
  strokeWeight(3);
  rect(0, 0, rwidth, rheight);
  stroke(0, 255, 220);
  strokeWeight(2);
  
  i = map(mouseX, 0, width, radians(110), radians(250));
  
  translate(-rwidth/2, 0);
  x = 400 * cos(i);
  y = 400 * sin(i);
  line(0, 0, x, y);
  
  r = -asin(sin(i) / ri);
  float tl = rwidth / cos(r);
  x = tl * cos(r);
  y = tl * sin(r);
  line(0, 0, x, y);
  
  translate(rwidth, y);
  x = -400 * cos(i);
  y = -400 * sin(i);
  line(0, 0, x, y);
}
