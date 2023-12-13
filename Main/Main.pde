enum gameState { WIN, LOSE, PLAYING, MENU } //Game states
gameState currentState = gameState.MENU;

//Arrays
Player [] player = new Player[1];
Hazard1 [] hazard1 = new Hazard1[4];
Hazard2 [] hazard2 = new Hazard2[4];
Hazard3 [] hazard3 = new Hazard3[4];
Hazard4 [] hazard4 = new Hazard4[4];

void setup() {
  size(400, 400);
  background(0);
  noStroke();
  frameRate(60);
  rectMode(CORNERS);
  currentState = gameState.MENU;
//create player
  for (int i=0; i<player.length; i++) {
  player[i]= new Player();
  }
//create hazards
  for (int i=0; i<hazard1.length; i++) {
    hazard1[i] = new Hazard1();
  }
  for (int i=0; i<hazard2.length; i++) {
    hazard2[i] = new Hazard2();
  }
  for (int i=0; i<hazard3.length; i++) {
    hazard3[i] = new Hazard3();
  }
  for (int i=0; i<hazard4.length; i++) {
    hazard4[i] = new Hazard4();
  }
}

void draw() {
//Game states
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
//Move hazards
  for (int i=0; i<player.length; i++) {
   player[i].playerMove(); 
  }
  for (int i=0; i<hazard1.length; i++) {
    hazard1[i].hazard1Move();
  }
  for (int i=0; i<hazard2.length; i++) {
    hazard2[i].hazard2Move();
  }
  for (int i=0; i<hazard3.length; i++) {
    hazard3[i].hazard3Move();
  }
  for (int i=0; i<hazard4.length; i++) {
    hazard4[i].hazard4Move();
  }

//Hazard 1 collision detection
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard1[0].position.x, hazard1[0].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard1[1].position.x, hazard1[1].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard1[2].position.x, hazard1[2].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard1[3].position.x, hazard1[3].position.y) < 15) {
    currentState = gameState.LOSE;
  }
//Hazard 2 collision detection
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard2[0].position.x, hazard2[0].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard2[1].position.x, hazard2[1].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard2[2].position.x, hazard2[2].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard2[3].position.x, hazard2[3].position.y) < 15) {
    currentState = gameState.LOSE;
  }
//Hazard 3 collision detection
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard3[0].position.x, hazard3[0].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard3[1].position.x, hazard3[1].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard3[2].position.x, hazard3[2].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard3[3].position.x, hazard3[3].position.y) < 15) {
    currentState = gameState.LOSE;
  }
//Hazard 4 collision detection
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard4[0].position.x, hazard4[0].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard4[1].position.x, hazard4[1].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard4[2].position.x, hazard4[2].position.y) < 15) {
    currentState = gameState.LOSE;
  }
  if(dist(player[0].playerPosition.x, player[0].playerPosition.y, hazard4[3].position.x, hazard4[3].position.y) < 15) {
    currentState = gameState.LOSE;
  }
}

void keyPressed() {
//Reset button
  if (key == 'r' || key == 'R') {
    setup();
    draw();
  }
//Player controls
  if (key == 'w' || key == 'W') {
    player[0].goUp = true;
  }
  if (key == 'a' || key == 'A') {
    player[0].goLeft = true;
  }
  if (key == 's' || key == 'S') {
    player[0].goDown = true;
  }
  if (key == 'd' || key == 'D') {
    player[0].goRight = true;
  }
//Start game from menu
  if (key == 'e' || key == 'E') {
    if (currentState == gameState.MENU) {
      currentState = gameState.PLAYING;
    }
  }
}
void keyReleased() {
  if (key == 'w' || key == 'W') {
    player[0].goUp = false;
  }
  if (key == 'a' || key == 'A') {
    player[0].goLeft = false;
  }
  if (key == 's' || key == 'S') {
    player[0].goDown = false;
  }
  if (key == 'd' || key == 'D') {
    player[0].goRight = false;
  }
}
