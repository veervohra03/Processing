// Veer Vohra
// Supernova
// Java Ver 1.0 (translated from Python)

float t = 0;
int numPs = 100;
inParticle[] inPs = new inParticle[numPs];
outParticle[] outPs = new outParticle[numPs];
float cs = 10;
color[] inColours = {#F03924, #F24F3C, #8A2E22, #59211F};
color[] outColours = {#8865F5, #AE6FFF, #6D25B3, #808080};

void setup(){
    size(1000, 800);
    noStroke();
    for (int i = 0; i < numPs; i++){
        inPs[i] = new inParticle();
        outPs[i] = new outParticle();
    }
}
    
void draw(){
    background(0);
    translate(width/2, height/2);
    if (cs <= 125){
        cs += 0.75;
        for (int i = 0; i < numPs; i++){
            inPs[i].move();
            inPs[i].display();
            ellipse(0, 0, cs, cs);
        }
    } else{
      for (int i = 0; i < numPs; i++){
        outPs[i].move();
        outPs[i].display();
      }
    }
}
