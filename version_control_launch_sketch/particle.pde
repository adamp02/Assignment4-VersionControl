class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  float randomR, randomG, randomB;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    
    randomR = random(0, 255);
    randomG = random(0, 255);
    randomB = random(0, 255);
    
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(randomR, randomG, randomB); // Randomize the fill colour of each particle
    ellipse(position.x, position.y, 10, 10);
  }
}
