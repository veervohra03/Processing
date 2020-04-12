// Electron Class

class Electron{
  
  PVector location, velocity;
  int dir = 1;
  
  Electron(){
    location = new PVector(random(-width, width), random(0, height));
    velocity = new PVector(random(3,6), random(-0.25, 0.25));
  }
  
  void move(float temperature){
    location.add(velocity);
  }
  
  void display(){
    fill(0, 0, 255);
    ellipse(location.x, location.y, 10, 10);
  }
}
