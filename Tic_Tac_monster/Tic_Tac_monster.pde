
//random position for the tictac
int tictacX = (int)random(0,(800/20))*20;
int tictacY = (int)random(0,(800/20))*20;

//two arrays to store all the previous positions of the monsters position
int[] positionX = new int[9999];
int[] positionY = new int[9999];

boolean up, down, left, right;
int size = 20;
int monstersize = 10;

int time = 0;



void setup() {
  size(800,800);
  background(255,255,255);
  
  //start the first [monstersize] elements with starting position
  for(int i=0; i<monstersize; i++){
      positionX[i] = width/2;
      positionY[i] = height/2;
  }
  right = true;
}

void draw() {
  fill(0,0,0);
  
  //draw the tictac
  rect(tictacX,tictacY,20,20);

  noStroke();
  time++;
  
  //only draw every 10 frames to give it a slower feel, this can be used later to spped up the game
  if((time % 10) == 0){
  
    // move the head square of the monster element[0]
    if (up==true){positionY[0] = positionY[0]-size;}
    if (down==true){positionY[0] = positionY[0]+size;}
    if (left==true){positionX[0] = positionX[0]-size;}
    if (right==true){positionX[0] = positionX[0]+size;}

    //shift all the coordinates back one array
    for(int i=monstersize; i>0; i--){
      positionX[i] = positionX[i-1];
      positionY[i] = positionY[i-1]; 
    }
 
  }
  
  //draw all the rects
  for(int i=0; i<=monstersize; i++){
    //add space (p - padding) between each square
    int p = 2;
    rect(positionX[i] + p, positionY[i] + p, size - p, size - p);
  }
    
  //this was the line of code making it fail earlier! everything was there, just missed that you'd added a white fill so was drawing the tail white lol
  fill(255,255,255,150);
  rect(0,0,800,800);
}


  
void keyPressed(){
  
  //going to need to rethink this - the collsion detection should happen in draw function, or even its own function
  // at the moment it stops reponding to the arrow keys if it goes off the edge, which could also work, but you need to make an else with a game over
  //also instead of so many if's remember the || (or) and && (and) symbols for having multiple rules in an if statement
  if (positionX[0]>-10) {
  if (positionY[0]>-10) { 
  if (positionX[0]<810) {
  if (positionY[0]<810) { 
  
  if(key == CODED){   
    //to stop it going back on itself how about
    //if(keyCode == UP && down==false){
    if(keyCode == UP){
      up = true;
      down = false;
      left = false;
      right = false;
   }
  }
    if(key == CODED){
    if(keyCode == DOWN){
    down = true;
    up = false;
    left = false;
    right = false;
    }
   } 
    if(key == CODED){
      if(keyCode == RIGHT){
        right = true;
        up = false;
        down = false;
        left = false;
   } 
  }
    if(key == CODED){
    if(keyCode == LEFT){
    left = true;
    up = false;
    down = false;
    right = false;
       } 
      }
     }
    }
   }
  }
 }