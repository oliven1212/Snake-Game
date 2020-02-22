//Anton, Mohammad and Valdemar 2d1 "Error 404". Snake Game Project.

static final PVector playerPos = new PVector();
PVector playerVel = new PVector();
float playerSpd = 3.5;

//int that holds info about which screen to show
int Screen = 0;

Snake Snakey; 

void setup () {
  fullScreen();
  //Create a Snake with the following variables
  Snakey = new Snake(width/2, height/2, 1);
  frameRate(60);
}

void draw () {
  //Checks for which screen is active and displays it
  if (Screen == 0) {
    StartScreen();
  } else if (Screen == 1) {
    GameScreen();
  } else if (Screen == 2) {
    EndScreen();
  }
}

void keyPressed() {
  final int k = keyCode;

  if      (k == 'A') {
    playerVel.x = -playerSpd; 
    playerVel.y = 0;
  } else if (k == 'D') { 
    playerVel.x =  playerSpd;
    playerVel.y =  0;
  } else if (k == 'W') { 
    playerVel.y = -playerSpd;
    playerVel.x =  0;
  } else if (k == 'S') {
    playerVel.y =  playerSpd;
    playerVel.x =  0;
  }

  if      (k == LEFT) playerVel.x = -playerSpd;
  else if (k == RIGHT) playerVel.x =  playerSpd;
  else if (k == UP) playerVel.y = -playerSpd;
  else if (k == DOWN) playerVel.y =  playerSpd;
}

void keyReleased() {
  final int k = keyCode;

  if      (k == 'A' && playerVel.x < 0)
    playerVel.x = -playerSpd;

  else if (k == 'D' && playerVel.x > 0)  
    playerVel.x =  playerSpd;

  if      (k == 'W' && playerVel.y < 0)
    playerVel.y =  -playerSpd;

  else if (k == 'S' && playerVel.y > 0)
    playerVel.y =  playerSpd;



  if      ( k == LEFT && playerVel.x < 0
    || k == RIGHT && playerVel.x > 0)
    playerVel.x = 0;

  else if ( k == UP && playerVel.y < 0
    || k == DOWN && playerVel.y > 0)
    playerVel.y = 0;
}
