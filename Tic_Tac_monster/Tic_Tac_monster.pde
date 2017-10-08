int tictacX = (int)random(0,(800/20))*20;
int tictacY = (int)random(0,(800/20))*20;
int startX = 400;
int startY = 400;
int[] positionX = new int[9999];
int[] positionY = new int[9999];
boolean up, down, left, right;
int size = 20;
int time = 0;
int monstersize = 3;

void setup() {
  size(800,800);
  background(255,255,255);
  positionX[0] = 400;
  positionY[0] = 400;
  right = true;

}

void draw() {
  fill(0,0,0);

  rect(tictacX,tictacY,20,20);
  rect(positionX[0],positionY[0],size,size);

  noStroke() ;
  time++;
  
  fill(255,255,255,150);
  rect(0,0,800,800);
  if((time % 10) == 0){
    positionY[1] = positionY[0];
    positionX[1] = positionX[0];
    if (up==true){positionY[0] = positionY[0]-size;}
    if (down==true){positionY[0] = positionY[0]+size;}
    if (left==true){positionX[0] = positionX[0]-size;}
    if (right==true){positionX[0] = positionX[0]+size;}
    

    rect(positionX[0],positionY[0],size,size);
    rect(positionX[1],positionY[1],size,size);

    
    //for(int i=0; i<9998; i++){
    //  positionX[i] = positionX[i+1];
    //  positionY[i] = positionY[i+1]; 
    //}
    //for(int i=0; i<monstersize; i++){
    //  rect(positionX[i],positionY[i],size,size);
    //}
    
  }
  


}


  
void keyPressed(){
  
  
  if (positionX[0]>-10) {
  if (positionY[0]>-10) { 
  if (positionX[0]<810) {
  if (positionY[0]<810) { 
  
  if(key == CODED){   
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