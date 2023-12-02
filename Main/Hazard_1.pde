//Class to create small hazards

class Hazard1 {
  Hazard1() {
    hazard1Start();
  }
  
//Hazard 1 variables
  PVector position = new PVector();
  float velocity;
  float hazardSize;
  
  void hazard1Start() {
    position.x = 300;
    position.y = 200;
    velocity = 1;
    fill(255, 0, 60);
    ellipse(position.x, position.y, 15, 15);
  }
  void hazard1Move() {
    fill(255, 0, 60);
    ellipse(position.x, position.y, 15, 15);
    position.x = position.x - velocity;
  }
}
