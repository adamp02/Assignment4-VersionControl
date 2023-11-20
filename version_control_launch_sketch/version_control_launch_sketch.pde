ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int i = particles.size() - 1; i > 0; i--){ // Loop backwards through arrayList
    particles.get(i).update();
    particles.get(i).display();
    
    if (particles.get(i).position.x > height) {
     particles.remove(i); // Remove particles if they go off the screen
    }
    
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
