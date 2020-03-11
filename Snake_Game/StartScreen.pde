//Defining variables needed for button check
boolean lastMousePressed = false;

//Define name of a button
Button StartGameButton;

void StartScreen() {
  //Creates new snakes
  newSnakes();
  Screen = 0;

  //Calculating if mouse has just been pressed
  boolean mouseJustPressed = mousePressed & !lastMousePressed;
  lastMousePressed = mousePressed;

  //Button to continue to game screen
  StartGameButton = new Button(width/4, height/12, 520, 100, 255, 255, "START GAME", 70, 0, 0, 150, 50);
  if (StartGameButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, StartGameButton) == true) {
    Screen = 1;
    playerVel1.x = playerSpd;
    playerVel2.x = -playerSpd;
  }
  //Updates the button
  StartGameButton.Update();
}
