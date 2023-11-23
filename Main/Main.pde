int gameState;

void setup() {
  size(400, 400);
  background(0);
  noStroke();
  frameRate(60);
  rectMode(CORNERS);
}

void draw() {
  switch (gameState) {
    case 0:
    startMenu();
    break;
    case 1:
    gameWin();
    break;
    case 2:
    gameOver();
    break;
  }
}

void startMenu() { //display the starting menu
  
}

void gameWin() { //display the win screen
  
}

void gameOver() { //display the game over screen
  fill(0);
  rect(0, 0, 400, 400);
  fill(255, 0, 0);
  textSize(50);
  text("GAME OVER", 85, 150);
  textSize(25);
  text("Press R to restart", 120, 200);
}
