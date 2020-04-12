// Semiconductor Simulation
// Veer Vohra
// March 2020

ArrayList<Cation> cations = new ArrayList<Cation>();
ArrayList<Electron> electrons = new ArrayList<Electron>();
float numEs;
float temp = 0;
int success, fail, time, collisions = 0;

//////////////////////////////////////////////////////////////////////////////

void setup(){
  size(1500, 900);
  noStroke();
  ellipseMode(CENTER);
  for (int i = 0; i <= width; i+=150) {
    for (int j = 0 ; j <= height; j+=150){
      cations.add(new Cation(new PVector(i, j)));
    }
  }
}

//////////////////////////////////////////////////////////////////////////////

void draw(){
  background(220);
  
  temp = (int) map(mouseY, height, 0, 0, 300);
  numEs = (int) map(temp, 0, 300, 0, width*height/2000);
  
  for (int i = 0; i < cations.size(); i++) {
    Cation cation = cations.get(i);
    cation.move(temp);
    cation.display();
  }
  
  while (electrons.size() != numEs){
    while (electrons.size() > numEs) {
      electrons.remove(electrons.size() - 1);
    }
    while (electrons.size() < numEs){
      electrons.add(new Electron());
    }
  }
  
  for (int i = 0; i < cations.size(); i++) {
    Cation cation = cations.get(i);
    for (int j = 0; j < electrons.size(); j++) {
      Electron electron = electrons.get(j);
      if (dist(electron.location.x, electron.location.y, cation.location.x, cation.location.y) < 22) {
        float dx = electron.location.x - cation.location.x;
        float dy = electron.location.y - cation.location.y;
        float theta = atan2(dy, dx);
        float targetX = electron.location.x + cos(theta) * 22;
        float targetY = electron.location.y + sin(theta) * 22;
        electron.velocity.x += (targetX - cation.location.x) * 0.01;
        electron.velocity.y += (targetY - cation.location.y) * 0.01;
        collisions++;
      }
    }
  }
  
  for (int i = 0; i < electrons.size(); i++) {
    Electron electron = electrons.get(i);
    if (electron.location.y >= height || electron.location.y <= 0){
      electrons.remove(electron);
      fail += 1;
    }
    else if (electron.location.x >= width){
      electrons.remove(electron);
      success += 1;
    }
    else{
      electron.move(temp);
      electron.display();
    }
  }
  
  fill(255);
  rect(8, 27, 230, 50);
  fill(0);
  //if (success > 0 && fail > 0) {
  //  int resistance = (int) (100 * ((float) fail) / (success + fail));
  //  String dispRes = "Resistance : " + resistance;
  //}
  //else {
  //  String dispRes = "Resistance : 0";
  //}
  textSize(20);
  text("Collisions : " + collisions, 10, 50);
  text("Current : " + success, 10, 70);
  
  time++;
  if (time == 75 || temp == 0){
    time = 0;
    success = 0;
    fail = 0;
    collisions = 0;
  }
  
}

//////////////////////////////////////////////////////////////////////////////
