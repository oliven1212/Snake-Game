class Snake1 {
  float xPos1;
  float yPos1;
  int health1;
  ArrayList<PVector> tail = new ArrayList<PVector>();
  int total = 1;

  //Constructor
  Snake1(float xPos1, float yPos1, int health1) {
    this.xPos1 = xPos1;
    this.yPos1 = yPos1;
    this.health1 = health1;
    playerPos1.x = 22;
    playerPos1.y = 22;
  }



  //Updates the Snake's properties
  void update() {
    playerVel1.x = playerSpd;


    if (total > 0) {
      if (total == tail.size() && !tail.isEmpty()) {
        //tail.remove(0);
      }
      tail.add(new PVector(playerPos1.x, playerPos1.y));
    }


    if (playerPos1.x <= 21 || playerPos1.y <= 21 || playerPos1.x >= width-21 || playerPos1.y >= height-21) {
      Screen = 2;
    }

    if (playerPos2.x == playerPos1.x && playerPos2.y == playerPos1.y) {

      Screen = 2;
    }

    for (int i = 0; i < Snakey2.tail.size(); i++) {
      if (playerPos1.x == Snakey2.tail.get(i).x && playerPos1.y == Snakey2.tail.get(i).y ) {
        Screen = 2;
      }
    }
    
    for (int i = 0; i < tail.size()-1; i++) {
      if (playerPos1.x == tail.get(i).x && playerPos1.y == tail.get(i).y ) {
        Screen = 2;
      }
    }
    
    playerPos1.add(playerVel1);
    playerPos1.x = playerPos1.x + playerVel1.x*scl;
    playerPos1.y = playerPos1.y + playerVel1.y*scl;   

    playerPos1.x = constrain(playerPos1.x, scl, width-18/*-scl*2-26*/);
    playerPos1.y = constrain(playerPos1.y, scl, height-21);
  }

  void draw() {
    fill(255, 0, 0);
    for (PVector v : tail) {
      rect(v.x, v.y, scl, scl);
    }

    rect(playerPos1.x, playerPos1.y, scl, scl);
    fill(0, 255, 85);
  }
} 
