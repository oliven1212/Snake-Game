void GameScreen() {
  Screen = 1;
  background(255);
  //Checks if Snake dies and displays the EndScreen
  Snakey1.update();
  if (Snakey1.health1 <= 0) {
    EndScreen();
  }

  Snakey2.update();
  if (Snakey2.health2 <= 0) {
    EndScreen();
  }

  //Fruit.display();
}
