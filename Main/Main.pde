enum gameState { WIN, LOSE, PLAYING, MENU } 
gameState currentState = gameState.MENU;
player [] player = new player[1];


void setup() {
  size(400, 400);
  background(0);
  noStroke();
  frameRate(60);
  rectMode(CORNERS);
  currentState = gameState.MENU;
//create player
  for (int i=0; i<player.length; i++) {
  player[i]= new player();
  }
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
    playing();
    break;
  }
}

void startMenu() { //display the starting menu
  fill(0);
  rect(0, 0, 400, 400);
  fill(255);
  textSize(35);
  text("just", 115, 150);
  textSize(40);
  text("sh   pes", 170, 160);
  fill(20, 250, 250);
  textSize(60);
  text("&beats", 115, 200);
  textSize(20);
  text("Press E to begin", 140, 300);
  fill(255, 0, 60);
  triangle(210, 160, 222, 138, 234, 160);
  fill(255);
  triangle(217, 157, 222, 146, 227, 157);
  fill(0);
  rect(110, 120, 130, 130);
}

void gameWin() { //display the win screen
  fill(0);
  rect(0, 0, 400, 400);
  fill(50, 250, 250);
  textSize(70);
  text("CONGRATS", 45, 175);
  textSize(25);
  text("Press R to restart", 115, 300);
}

void gameOver() { //display the game over screen
  fill(0);
  rect(0, 0, 400, 400);
  fill(50, 250, 250);
  textSize(70);
  text("IT'S OVER", 60, 175);
  textSize(25);
  text("Press R to restart", 115, 300);
}

void playing() { //activate the game
  background(0);
  for (int i=0; i<player.length; i++) {
   player[i].playerMove(); 
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    setup();
    draw();
  }
  if (key == 'z') 
  currentState = gameState.WIN;
  if (key == 'x')
  currentState = gameState.LOSE;
  if (key == 'e' || key == 'E') {
    if (currentState == gameState.MENU) {
      currentState = gameState.PLAYING;
    }
  }
}
