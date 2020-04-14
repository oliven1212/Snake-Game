void GameScreen() {
  Screen = 1;
  background(255);


  //Draws the snakes
  Snakey1.draw();
  Snakey2.draw();

  PFont f;
  f = createFont("Arial", 20, true);
  textFont(f, 20);
  fill(0);
  text("Score", width/2, 70);
  fill(255,0,0);
  text(Redpoints, width/2 - 9, 95);
  fill(0);
  text("-", width/2, 95);
  fill(0,0,255);
  text(Bluepoints, width/2 + 10, 95);
  

  //Updates snakes
  Snakey1.update();
  Snakey2.update();


  if (Bluepoints >= PointGoal) {
    Screen = 3;
    current = Blue;
  } 


  if (Redpoints >= PointGoal) {
    Screen = 3;
    current = Red;
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
