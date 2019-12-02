class Dot{
  
  PVector location;
  PVector velocity;
  float alpha = 101;
  float size = 101;
  int col;
  
  Dot(){
    location = new PVector(mouseX, mouseY);
    velocity = new PVector(random(-3,3), random(-3,3));
    int c = (int) random(0, 5);
    col = colors[c];
  }
  
  void move(){
    location.add(velocity);
    alpha--;
    if (size <= 0){
      size = 0;
    } else {
      size -= 2;
    }
  }
  
  void display(){
    noStroke();
    // fill(col.x, col.y, col.z, alpha);
    // fill(255, alpha);
    fill(col, 100);
    ellipse(location.x, location.y, size,size);
  }
  
}
