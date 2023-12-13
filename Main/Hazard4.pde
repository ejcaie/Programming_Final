//Class to create hazards that move up

class Hazard4 {
  Hazard4() {
    hazard4Start();
  }
  
//Hazard 4 variables
  PVector position = new PVector();
  float velocity;
  
  void hazard4Start() { //Function to spawn hazards
    position.x = random(0, 400);
    position.y = random(400, 800);
    velocity = 5;
  }
  void hazard4Move() { //Function to move hazards
    fill(255, 0, 60);
    ellipse(position.x, position.y, 15, 15);
    position.y = position.y - velocity;
    
    if (position.y < -20) { //Resets hazards that move off-screen
      hazard4Start();
    }
  }
}
