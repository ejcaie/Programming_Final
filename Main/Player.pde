//class to display the player

class player {
  player() {
    playerStart();
  }
  
//player variables 
  PVector playerPosition = new PVector();

  void playerStart() {
    playerPosition.x = 200;
    playerPosition.y = 200;
    fill(255);
    ellipse(playerPosition.x, playerPosition.y, 15, 15);
  }
  void keyPressed() {
    if (key == 'w' || key == 'W') {
      playerPosition.y = playerPosition.y - 1;
    }
    
  }
}
