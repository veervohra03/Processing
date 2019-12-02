class Particle{
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  int alpha = 100;
  
  Particle(){
    location = new PVector(width/2, 50);
    velocity = new PVector(random(-2,2), 0);
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
