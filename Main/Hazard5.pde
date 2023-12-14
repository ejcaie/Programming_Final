//Class to create hazards that move randomly

class Hazard5 {
  Hazard5() {
    hazard5Start();
  }
  
//Hazard 5 variables
  PVector position = new PVector(random(-400, 0), random(-400, 0));
  PVector velocity = new PVector();
  float acceleration;
  
  void hazard5Start() { //Function to spawn hazards
    position.x = random(-400, 0);
    position.y = random(-400, 0);
    velocity.x = random(1, 3);
    velocity.y = random(1, 3);
    acceleration = 0;
  }
  void hazard5Move() { //Function to move hazards
    fill(255, 0, 60);
    ellipse(position.x, position.y, 30, 30);
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;

//Speeds up hazards over time
    if (timer > 500) {
      velocity.x = random(2, 4);
      velocity.y = random(2, 4);
      if (timer > 1000) {
        velocity.x = random(3, 5);
        velocity.y = random(3, 5);
        if (timer > 1500) {
          velocity.x = random(4, 6);
          velocity.y = random(4, 6);
          if (timer > 2000) {
            acceleration = 0.1;
            velocity.x = random(5, 7);
            velocity.y = random(5, 7);
            velocity.x = velocity.x + acceleration;
            velocity.y = velocity.y + acceleration;
          }
        }
      }
    }
    
//Resets hazards that move off-screen
    if (position.y > 420) {
      hazard5Start();
    }
    if (position.y < -400) {
      hazard5Start();
    }
    if (position.x < -400) {
      hazard5Start();
    }
    if (position.x > 420) {
      hazard5Start();
    }
  }
}
