// Veer Vohra
// Simple Particle System
// Java Ver 1.0

ArrayList<Particle> particles;

void setup(){
  size(800,700);
  particles = new ArrayList<Particle>();
}

void draw(){
  background(51);
  particles.add(new Particle());
  
  for (int i = 0; i < particles.size(); i++){
    Particle p = particles.get(i);
    p.move();
    p.display();
    if (p.alpha <= 0){
      particles.remove(p);
    }
  }
  
}
