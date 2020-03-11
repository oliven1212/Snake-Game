//Define name of a button
Button GameOverButton;
Button RetryButton;

//Size of GameOver + Retry buttons
int lB = 300;
int hB = 125;

void EndScreen() {
  Screen = 2;
  background(0);

  if (win == 1) {
    background(255, 0, 0);
    GameOverButton = new Button(width/2-lB/2, height/2-hB, lB, hB, 255, 255, "Red Won!", 50, 0, 0, 150, 50);
    GameOverButton.Update();
  }
  if (win == 2) {
    background(0, 0, 255);
    GameOverButton = new Button(width/2-lB/2, height/2-hB, lB, hB, 255, 255, "Blue Won!", 50, 0, 0, 150, 50);
    GameOverButton.Update();
  }



  //Calculating if mouse has just been pressed
  boolean mouseJustPressed = mousePressed & !lastMousePressed;
  lastMousePressed = mousePressed;

  noStroke();
  //Button that displays Game Over
  if (win == 0) {
    GameOverButton = new Button(width/2-lB/2, height/2-hB, lB, hB, 255, 255, "GAME OVER", 50, 0, 0, 150, 50);
    GameOverButton.Update();
  }

  //Button to restart game
  RetryButton = new Button(width/2-lB/2, height/2, lB, hB/2, 255, 255, "Retry", 40, 0, 0, 150, 50);
  if (RetryButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, RetryButton) == true) {
    RestartGame();
  }
  RetryButton.Update();
}

void RestartGame() {
  //Creates new snakes
  newSnakes();

  //Resets stats and position of Snake 1
  Snakey1.health1 = 1;
  playerVel1.x = 0; 
  playerVel1.y = 0;
  playerPos1.x = 22*scl;
  playerPos1.y = height/2;
  Snakey1.total = 1;
  playerVel1.x = playerSpd;

  //Resets stats and position of Snake 2
  Snakey2.health2 = 1;
  playerVel2.x = 0; 
  playerVel2.y = 0;
  playerPos2.x = width-23*scl;
  playerPos2.y = height/2;
  Snakey1.total = 2;
  playerVel2.x = -playerSpd;

  Screen = 1;
}
