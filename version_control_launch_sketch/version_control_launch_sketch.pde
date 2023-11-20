ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int j = particles.size() - 1; j > 0; j--){ // Loop backwards through arrayList
    particles.get(j).update();
    particles.get(j).display();
    
    if (particles.get(j).position.x > height) {
     particles.remove(j); // Remove particles if they go off the screen
    }
    
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
