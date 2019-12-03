class outParticle{
  
  PVector location, velocity;
  float diam;
  
  outParticle(){
    location = new PVector(0, 0);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    diam = 0;
  }
  
  void move(){
    location.add(velocity);
    velocity.mult(1.1);
    diam += 0.5;
  }
  
  void display(){
    int c = (int) random(0,3);
    fill(color(outColours[c]));
    ellipse(location.x, location.y, diam, diam);
  
  }
  
}
