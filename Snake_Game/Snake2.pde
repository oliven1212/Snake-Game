class Snake2 {
  float xPos2;
  float yPos2;
  int health2;
  ArrayList<PVector> tail = new ArrayList<PVector>();
  int total = 1;

  //Constructor
  Snake2(float xPos2, float yPos2, int health2) {
    this.xPos2 = xPos2;
    this.yPos2 = yPos2;
    this.health2 = health2;
    playerPos2.x = width-32;
    playerPos2.y = height-32;
  }
  
  

  //Updates the Snake's properties
  void update() {
    if (total > 0) {
      if (total == tail.size() && !tail.isEmpty()) {
        //tail.remove(0);
      }
      tail.add(new PVector(playerPos2.x, playerPos2.y));
    }

    
    if (playerPos2.x <= 21 || playerPos2.y <= 21 || playerPos2.x >= width-31 || playerPos2.y >= height-31) {
  
    Screen = 2;
  }



    playerPos2.add(playerVel2);
    playerPos2.x = playerPos2.x + playerVel2.x*scl;
    playerPos2.y = playerPos2.y + playerVel2.y*scl;   

    playerPos2.x = constrain(playerPos2.x, scl, width-18);
    playerPos2.y = constrain(playerPos2.y, scl, height-21);
  }

  void draw() {
    fill(0, 0, 255);
    for (PVector v : tail) {
      rect(v.x, v.y, scl, scl);
    }
    //The Face
    rect(playerPos2.x, playerPos2.y, scl, scl);
    fill(0, 255, 85);
    //The Eyes
    //circle(playerPos2.x + 10, playerPos2.y + 20, 10);
    //circle(playerPos2.x + 30, playerPos2.y + 20, 10);
  }
} 
