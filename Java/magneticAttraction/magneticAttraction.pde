// Veer Vohra
// Magnetic Attraction
// Java Ver 1.0

ArrayList<Particle> particles = new ArrayList<Particle>();

void setup(){
  size(1000,800);
}

void draw(){
  background(51);
  noStroke();
  fill(0);
  ellipseMode(CENTER);
  translate(width/2, height/2);
  ellipse(0, 0, 40, 40);
  particles.add(new Particle());
  for (int i = 0; i < particles.size(); i++) {
    Particle particle = particles.get(i);
    if (particle.life > 0){
      particle.move();
      particle.display();
    } else{
      particles.remove(particle);
    }
  }
}
