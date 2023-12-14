//Class to create hazards that move down

class Hazard2 {
  Hazard2() {
    hazard2Start();
  }
  
//Hazard 2 variables
  PVector position = new PVector();
  float velocity;
  
  void hazard2Start() { //Function to spawn hazards
    position.x = random(0, 400);
    position.y = random(-400, 0);
    velocity = 2;
  }
  void hazard2Move() { //Function to move hazards
    fill(255, 0, 60);
    ellipse(position.x, position.y, 15, 15);
    position.y = position.y + velocity;
    
//Speeds up hazards over time
    if (timer > 500) {
      velocity = 3;
      if (timer > 1000) {
        velocity = 4;
        if (timer > 1500) {
          velocity = 5;
          if (timer > 2000) {
             velocity = 6;
          }
        }
      }
    }
    
    if (position.y > 420) { //Resets hazards that move off-screen
      hazard2Start();
    }
  }
}
