//Defining variables needed for button check
boolean lastMousePressed = false;

//Define name of a button
Button StartGameButton;

void StartScreen() {
  Screen = 0;
  //Calculating if mouse has just been pressed
  boolean mouseJustPressed = mousePressed & !lastMousePressed;
  lastMousePressed = mousePressed;

  //Button to continue to game screen
  StartGameButton = new Button(width/3, height/12, 400, 100, 255, 255, "START GAME", 50, 0, 0, 150, 50);
  if (StartGameButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, StartGameButton) == true) {
    Screen = 1;
  }
  //Updates the button
  StartGameButton.Update();
}
