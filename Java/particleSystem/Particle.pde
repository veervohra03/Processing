class Particle{
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  int alpha = 101;
  
  Particle(){
    location = new PVector(width/2, height-50);
    velocity = new PVector(random(-2,2), random(-15,-10));
    acceleration = new PVector(0, 0.2);
  }
  
  void move(){
    location.add(velocity);
    velocity.add(acceleration);
    alpha--;
  }
  
  void display(){
    fill(255,alpha);
    noStroke();
    ellipse(location.x, location.y, 25, 25);
  }
  
}
