class Particle{
  
  PVector location, velocity, acceleration, center;
  float theta, r, x, y, life, d, g;
  
  Particle(){
    life = 70;
    r = random(300, 500);
    theta = random(0,1) * TWO_PI;
    x = cos(theta) * r;
    y = sin(theta) * r;
    location = new PVector(x, y);
    velocity = new PVector();
    center = new PVector(0, 0);
  }
  
  void move(){
    PVector force = PVector.sub(center, location);
    d = force.mag();
    d = constrain(d, 1, 20);
    g = 50;
    float strength = g / (d * d);
    force.setMag(strength);
    life--;

    velocity.add(force);
    velocity.x = constrain(velocity.x, -20, 20);
    velocity.y = constrain(velocity.y, -20, 20);
    location.add(velocity);
  }
  
  void display(){
    fill(255, life);
    ellipse(location.x, location.y, 25, 25);
  }
}
