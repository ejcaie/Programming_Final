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
  }
  void playerMove() {
    if (key == 'w' || key == 'W') {
      playerPosition.y = playerPosition.y - 1;
    }
    if (key == 'a' || key == 'A') {
      playerPosition.x = playerPosition.x - 1;
    }
    if (key == 's' || key == 'S') {
      playerPosition.y = playerPosition.y + 1;
    }
    if (key == 'd' || key == 'D') {
      playerPosition.x = playerPosition.x + 1;
    }
    
    fill(255);
    ellipse(playerPosition.x, playerPosition.y, 15, 15);
  }
}
