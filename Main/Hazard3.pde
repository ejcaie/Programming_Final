//Class to create hazards that move right

class Hazard3 {
  Hazard3() {
    hazard3Start();
  }
  
//Hazard 3 variables
  PVector position = new PVector();
  float velocity;
  
  void hazard3Start() { //Function to spawn hazards
    position.x = random(-400, 0);
    position.y = random(0, 400);
    velocity = 2;
  }
  void hazard3Move() { //Function to move hazards
    fill(255, 0, 60);
    ellipse(position.x, position.y, 15, 15);
    position.x = position.x + velocity;
    
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
        
    if (position.x > 420) { //Resets hazards that move off-screen
      hazard3Start();
    }
  }
}
