void GameScreen() {
  Screen = 1;
  background(255);

  //Draws the snakes
  Snakey1.draw();
  Snakey2.draw();


  //Checks if Snake1 dies and displays the EndScreen
  Snakey1.update();
  if (Snakey1.health1 <= 0) {
    EndScreen();
  }

  //Checks if Snake2 dies and displays the EndScreen
  Snakey2.update();
  if (Snakey2.health2 <= 0) {
    EndScreen();
  }


  //Draws walls
  noStroke();
  fill(0, 0, 0);
  rect(0, 0, 1040, 21);
  rect(0, 0, 21, 680);
  rect(width-21, 0, 21, 680);
  rect(0, height-21, 1019, 21);
}

void newSnakes() {
  Snakey1 = new Snake1(width/2, height/2, 1);
  Snakey2 = new Snake2(width/2, height/2, 1);
}
