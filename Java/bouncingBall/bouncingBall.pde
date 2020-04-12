// Veer Vohra
// Bouncing ball in frictionless environment
// Java Ver 1.0

float balldiam = 50;
PVector position = new PVector(50, 200);
PVector velocity = new PVector(2, 0);
PVector gravity = new PVector(0, 0.2);

void setup() {
  size (800,400);
  fill(150);
}

void draw() {
  background(51);
  
  position.add(velocity);
  velocity.add(gravity);
  
  if (position.x > width-balldiam/2 || position.x < balldiam/2){
    velocity.x = velocity.x * -1;
  }
  
  if (position.y > height-balldiam/2 || position.y < balldiam/2){
    velocity.y = velocity.y * -0.9;
  }
  
  ellipseMode(CENTER);
  ellipse(position.x, position.y, balldiam, balldiam);
}
