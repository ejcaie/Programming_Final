//Class to create hazards that move down

class Hazard2 {
  Hazard2() {
    hazard2Start();
  }
  
//Hazard 2 variables
  PVector position = new PVector();
  float velocity;
  
  void hazard2Start() {
    position.x = random(0, 400);
    position.y = random(-400, 0);
    velocity = 5;
  }
  void hazard2Move() {
    fill(255, 0, 60);
    ellipse(position.x, position.y, 15, 15);
    position.y = position.y + velocity;
    
    if (position.y > 420) {
      hazard2Start();
    }
  }
}
