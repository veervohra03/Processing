class inParticle{
  
  PVector location, velocity, acceleration, center;
  float diam;
  
  inParticle(){
    float r = random(100, 500);
    float theta = random(0, TWO_PI);
    float x = r * cos(theta);
    float y = r * sin(theta);
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    center = new PVector(0, 0);
    diam = 20;
  }
  
  void move(){
    diam -= 0.3;
    acceleration = new PVector(0, 0);
    PVector force = PVector.sub(center, location);
    float d = force.mag();
    d = map(d, 0, 500, 1, 20);
    float strength = 50 / (d*d);
    force.setMag(strength);
    velocity.add(force);
    velocity.x = constrain(velocity.x, -10, 10);
    velocity.y = constrain(velocity.y, -10, 10);
    location.add(velocity);
  }
  
  void display(){
    int c = (int) random(0,3);
    fill(color(inColours[c]));
    ellipse(location.x, location.y, diam, diam);
  }
  
}
