//Anton, Mohammad and Valdemar 2d1 "Error 404". Snake Game Project.

static final PVector playerPos1 = new PVector();
static final PVector playerPos2 = new PVector();
PVector playerVel1 = new PVector();
PVector playerVel2 = new PVector();
float playerSpd = 1;
int scl = 40;

//int that holds info about which screen to show
int Screen = 0;

Snake1 Snakey1; 
Snake2 Snakey2;
Fruit Fruit;
void setup () {
  //fullScreen();
  size(760,680);
  //Create a Snake with the following variables
  Snakey1 = new Snake1(width/2, height/2, 1);
  Snakey2 = new Snake2(width/2, height/2, 1);
  Fruit = new Fruit();
//frameRate(1000);
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
//println(height);
//println(width);    
  Snakey1.draw();
  Snakey2.draw();
  Fruit.display();
} 

void keyPressed() {
  final int k = keyCode;

  if (k == 'G') {
    Snakey2.total = Snakey2.total + 4;          //gave it 4x the size increase cause we dont like to spam G
  }

  if (k == 'F') {
    Snakey1.total = Snakey1.total + 4;          //gave it 4x the size increase cause we dont like to spam G
  }


  if      (k == 'A') {
    playerVel1.x = -playerSpd; 
    playerVel1.y = 0;
  } else if (k == 'D') { 
    playerVel1.x =  playerSpd;
    playerVel1.y =  0;
  } else if (k == 'W') { 
    playerVel1.y = -playerSpd;
    playerVel1.x =  0;
  } else if (k == 'S') {
    playerVel1.y =  playerSpd;
    playerVel1.x =  0;
  }


  if      (k == LEFT) {
    playerVel2.x = -playerSpd; 
    playerVel2.y = 0;
  } else if (k == RIGHT) { 
    playerVel2.x =  playerSpd;
    playerVel2.y =  0;
  } else if (k == UP) { 
    playerVel2.y = -playerSpd;
    playerVel2.x =  0;
  } else if (k == DOWN) {
    playerVel2.y =  playerSpd;
    playerVel2.x =  0;
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
