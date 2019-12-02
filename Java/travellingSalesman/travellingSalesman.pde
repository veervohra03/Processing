// Veer Vohra
// Travelling Salesmen 
// Java Ver 1.0

int coordCount = 50;
float[][] coords = new float[coordCount][coordCount];
double bestDist = 100000;
float[][] bestPath = new float[coordCount][coordCount];
float time = 0;

void setup() {
  size(600, 600);
  // making and appending the coordinates
  for (int i = 0 ; i < coords.length ; i++){
    for (int j = 0 ; j < 2 ; j++){
      coords[i][j] = random(500);
    }
  }
}

void draw() {
  background(255);
  fill(1);
  double tempDist = 0;
  
  if (time < coordCount*1000){
    for (int i = 0; i < coords.length; i ++){
      if (i < coordCount-1) {
        line(coords[i][0], coords[i][1], coords[i+1][0], coords[i+1][1]);
        ellipse(coords[i][0], coords[i][1], 10, 10);
      }
      else {
        ellipse(coords[i][0], coords[i][1], 10, 10);
        line(coords[i][0], coords[i][1], coords[0][0], coords[0][1]);
      }
      time = time + 1;
    }
    
    for (int i = 0; i < coords.length ; i ++){
      if (i < coordCount-1) {
        float dist1 = coords[i+1][0] - coords[i][0];
        float dist2 = coords[i+1][1] - coords[i][1];
        float dist3 = pow(dist1, 2) + pow(dist2, 2);
        tempDist += sqrt(dist3);
      }
      else {
        float dist1 = coords[0][0] - coords[i][0];
        float dist2 = coords[0][1] - coords[i][1];
        float dist3 = pow(dist1, 2) + pow(dist2, 2);
        tempDist += sqrt(dist3);
      }
    }
    if (tempDist < bestDist){
      bestDist = tempDist;
      print("   " , bestDist , "   ");
      for (int m = 0 ; m < coords.length ; m++){
        for (int n = 0 ; n < 2 ; n++){
          bestPath[m][n] = coords[m][n];
          time = 0;
        }
      }
    }
  
    int index = (int) random(coordCount);
    int x = (int) random(coordCount);
    float[] a = coords[index];
    coords[index] = coords[x];
    coords[x] = a;
  }
  
  else {
    for (int i = 0; i < bestPath.length; i ++){
      if (i < coordCount-1) {
        line(bestPath[i][0], bestPath[i][1], bestPath[i+1][0], bestPath[i+1][1]);
        ellipse(bestPath[i][0], bestPath[i][1], 10, 10);
      }
      else {
        line(bestPath[i][0], bestPath[i][1], bestPath[0][0], bestPath[0][1]);
        ellipse(bestPath[i][0], bestPath[i][1], 10, 10);
      }
    }
    print("   " , bestDist , "   ");
  }
}
