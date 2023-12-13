//Class to create hazards that move left

class Hazard1 {
  Hazard1() {
    hazard1Start();
  }
  
//Hazard 1 variables
  PVector position = new PVector();
  float velocity;
  
  void hazard1Start() { //Function to spawn hazards
    position.x = random(400, 800);
    position.y = random(0, 400);
    velocity = 5;
  }
  void hazard1Move() { //Function to move hazards
    fill(255, 0, 60);
    ellipse(position.x, position.y, 15, 15);
    position.x = position.x - velocity;
    
    if (position.x < -20) { //Resets hazards that move off-screen
      hazard1Start();
    }
  }
}
