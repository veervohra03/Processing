// Veer Vohra
// Random Dots
// Java Ver 1.0

ArrayList<Dot> dots;
color[] colors = {#D26363, #D2A8AA, #0E2A38, #304753, #CF7E83}; // coral and dust

void setup(){
  size(1000,800);
  dots = new ArrayList<Dot>();
}

void draw(){
  background(51);
  if(abs(pmouseX - mouseX) > 2 || abs(pmouseY - mouseY) > 2){
    dots.add(new Dot());
    fill(255);
    ellipse(mouseX, mouseY, 100, 100);
  }
  for(int i = 0; i < dots.size(); i++){
    Dot d = dots.get(i);
    d.move();
    d.display();
  }
}
