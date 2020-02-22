void GameScreen() {
  Screen = 1;
  background(255);
  //Checks if Snake dies and displays the EndScreen
  Snakey.update();
  if (Snakey.health <= 0) {
    EndScreen();
  }
}
