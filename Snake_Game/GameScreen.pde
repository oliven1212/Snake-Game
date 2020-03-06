void GameScreen() {
  Screen = 1;
  background(255);
  fill(0,0,0);
  rect(0,0,1040,21);
  rect(0,0,21,680);
  rect(width-21,0,21,680);
  rect(0,height-21,1040,21);
  
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
