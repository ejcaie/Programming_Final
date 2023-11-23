enum gameState { WIN, LOSE, PLAYING, MENU }
gameState currentState = gameState.MENU;

void setup() {
  size(400, 400);
  background(0);
  noStroke();
  frameRate(60);
  rectMode(CORNERS);
  currentState = gameState.MENU;
}

void draw() {
  switch (currentState) {
    case MENU:
    startMenu();
    break;
    case WIN:
    gameWin();
    break;
    case LOSE:
    gameOver();
    break;
    case PLAYING:
    
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
  text("GAME OVER", 80, 150);
  textSize(25);
  text("Press R to restart", 115, 300);
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    setup();
    draw();
  }
  else if(key == 'a')
  currentState = gameState.LOSE;
  else if (key == 'd')
  currentState = gameState.WIN;
}
