class Snake1 {
  float xPos1;
  float yPos1;
  int health1;
  ArrayList<PVector> tail = new ArrayList<PVector>();
  int total = 0;




  //Constructor
  Snake1(float xPos1, float yPos1, int health1) {
    this.xPos1 = xPos1;
    this.yPos1 = yPos1;
    this.health1 = health1;
    playerPos1.x = width/2;
    playerPos1.y = height/2;
  }

  //Updates the Snake's properties
  void update() {


    if (total > 0) {
      if (total == tail.size() && !tail.isEmpty()) {
        tail.remove(0);
      }
      tail.add(new PVector(playerPos1.x, playerPos1.y));
    }

    playerPos1.add(playerVel1);
    playerPos1.x = playerPos1.x + playerVel1.x*scl;
    playerPos1.y = playerPos1.y + playerVel1.y*scl;   

    playerPos1.x = constrain(playerPos1.x, scl, width-2*scl);
    playerPos1.y = constrain(playerPos1.y, scl, height-2*scl);
  }

  void draw() {
    fill(255, 0, 0);
    for (PVector v : tail) {
      rect(v.x, v.y, scl, scl);
    }

    rect(playerPos1.x, playerPos1.y, scl, scl);
    fill(0, 255, 85);
    circle(playerPos1.x + 5, playerPos1.y + 10, 5);
    circle(playerPos1.x + 15, playerPos1.y + 10, 5);
  }
} 
