//class to display the player

class Player {
  
  //player variables 
  PVector playerPosition = new PVector();
  float playerVelocity;
  boolean goUp;
  boolean goLeft;
  boolean goDown;
  boolean goRight;
  
  Player() {
    playerStart();
  }

  void playerStart() { //Function to spawn the player in the default position
    playerPosition.x = 200;
    playerPosition.y = 200;
    playerVelocity = 6;
  }
  
  void playerMove() { // Function to move the player
    
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
