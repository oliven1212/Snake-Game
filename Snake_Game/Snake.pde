class Snake {
  int xPos;
  int yPos;
  int health;

  //Constructor
  Snake(int xPos, int yPos, int health) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.health = health;
    playerPos.x = width/2;
    playerPos.y = height/2;
  }

  //Updates the Snake's properties
  void update() {
    pushMatrix();
    translate(playerPos.x, playerPos.y);
    //rotate, rotates the figure.
    //rotate(-atan2(mouseX - playerPos.x, mouseY - playerPos.y)+(90*PI/180));
    if (playerVel.y == playerSpd)
      rotate(0.5*PI);

    else if (playerVel.y == -playerSpd)
      rotate(1.5*PI);

    else if (playerVel.x == playerSpd)
      rotate(2*PI);

    else if (playerVel.x == -playerSpd)
      rotate(1*PI);

    fill(0, 0, 255);
    square(-10, -10, 20);
    fill(0, 255, 85);
    circle(5, 5, 5);
    circle(5, -5, 5);
    //triangle(5, 0, -15, 10, -15, -10);
    popMatrix();
    playerPos.add(playerVel);

    playerPos.x = constrain(playerPos.x, 0, width);
    playerPos.y = constrain(playerPos.y, 0, height);
  }
} 
