// Cation Class

class Cation{
  
  PVector location, vibration;
  int dir;
  float theta, radius;
  
  Cation(PVector loc){
    location = loc;
    vibration = new PVector();
  }
  
  void move(float temperature){
    if (dir == 1){
      radius = map(temperature, 0, 300, 0, 15);
      theta = random(0, TWO_PI);
      vibration.x = radius * cos(theta);
      vibration.y = radius * sin(theta);
      location.add(vibration);
      dir = 0;
    }
    else{
      location.sub(vibration);
      dir = 1;
    }
  }
  
  void display(){
    fill(255, 0, 0);
    ellipse(location.x, location.y, 20, 20);
  }
}
