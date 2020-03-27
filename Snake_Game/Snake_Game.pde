import processing.core.PVector;
import processing.core.PVector;
import processing.core.PVector;
//Anton, Mohammad and Valdemar 2d1 "Error 404". Snake Game Project.

static final PVector playerPos1 = new PVector();
static final PVector playerPos2 = new PVector();
PVector playerVel1 = new PVector();
PVector playerVel2 = new PVector();
float playerSpd = 1;
int scl = 10;

//int that holds info about which screen to show
int Screen = 0;

int Walls;

int win = 0;

Snake1 Snakey1; 
Snake2 Snakey2;


void setup () {
  //fullScreen();
  size(1033, 681);
  //Create a Snake with the following variables
  //Snakey1 = new Snake1(width/2, height/2, 1);
  //Snakey2 = new Snake2(width/2, height/2, 1);
  frameRate(30);
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
  PFont f;
  f = createFont("Arial", 20, true);
  textFont(f, 20);
  text("Blue Score = "+Bluepoints, 125, 70);
  text("Red Score = "+Redpoints, 125, 95);
  //println(playerPos1);
} 

void keyPressed() {
  final int k = keyCode;

  if      (k == 'A') {
    if (playerVel1.x <= 0) { 
      playerVel1.x = -playerSpd; 
      playerVel1.y = 0;
    }
  } else if (k == 'D') { 
    if (playerVel1.x >= 0) { 
      playerVel1.x =  playerSpd;
      playerVel1.y =  0;
    }
  } else if (k == 'W') {
    if (playerVel1.y <= 0) { 
      playerVel1.y = -playerSpd;
      playerVel1.x =  0;
    }
  } else if (k == 'S') {
    if (playerVel1.y >= 0) { 
      playerVel1.y =  playerSpd;
      playerVel1.x =  0;
    }
  }


  if      (k == LEFT) {
    if (playerVel2.x <= 0) { 
      playerVel2.x = -playerSpd; 
      playerVel2.y = 0;
    }
  } else if (k == RIGHT) { 
    if (playerVel2.x >= 0) { 
      playerVel2.x =  playerSpd;
      playerVel2.y =  0;
    }
  } else if (k == UP) {
    if (playerVel2.y <= 0) { 
      playerVel2.y = -playerSpd;
      playerVel2.x =  0;
    }
  } else if (k == DOWN) {
    if (playerVel2.y >= 0) { 
      playerVel2.y =  playerSpd;
      playerVel2.x =  0;
    }
  }
}

void keyReleased() {
  final int k = keyCode;

  if      (k == 'A' && playerVel1.x < 0)
    playerVel1.x = -playerSpd;

  else if (k == 'D' && playerVel1.x > 0)  
    playerVel1.x =  playerSpd;

  if      (k == 'W' && playerVel1.y < 0)
    playerVel1.y =  -playerSpd;

  else if (k == 'S' && playerVel1.y > 0)
    playerVel1.y =  playerSpd;



  if      (k == LEFT && playerVel1.x < 0)
    playerVel1.x = -playerSpd;

  else if (k == RIGHT && playerVel1.x > 0)  
    playerVel1.x =  playerSpd;

  if      (k == UP && playerVel1.y < 0)
    playerVel1.y =  -playerSpd;

  else if (k == DOWN && playerVel1.y > 0)
    playerVel1.y =  playerSpd;
}
