//class to display the player

class player {
  player() {
    playerStart();
  }
  
//player variables 
  PVector playerPosition = new PVector();
  float playerVelocity;
  boolean goUp;
  boolean goLeft;
  boolean goDown;
  boolean goRight;

  void playerStart() {
    playerPosition.x = 200;
    playerPosition.y = 200;
    playerVelocity = 5;
  }
  void playerMove() {
    if (key == 'w' || key == 'W') {
      goUp = true;
    }
    if (key == 'a' || key == 'A') {
      goLeft = true;
    }
    if (key == 's' || key == 'S') {
      goDown = true;
    }
    if (key == 'd' || key == 'D') {
      goRight = true;
    }
    
    if (goUp == true) {
      playerPosition.y = playerPosition.y - playerVelocity;
    }
    if (goLeft == true) {
      playerPosition.x = playerPosition.x - playerVelocity;
    }
    if (goDown == true) {
      playerPosition.y = playerPosition.y + playerVelocity;
    }
    if (goRight ==true) {
      playerPosition.x = playerPosition.x + playerVelocity;
    }
    goUp = false;
    goLeft = false;
    goDown = false;
    goRight = false;
    
//blocking the player from moving off screen  
    if (playerPosition.y < 0) {
      playerPosition.y = 0;
    }
    if (playerPosition.x < 0) {
      playerPosition.x = 0;
    }
    if (playerPosition.y > 400) {
      playerPosition.y = 400;
    }
    if (playerPosition.x > 400) {
      playerPosition.x = 400;
    }
    
//player visuals
    fill(255);
    ellipse(playerPosition.x, playerPosition.y, 15, 15);
  }
}
