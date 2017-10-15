class Bop {
  float x,y;
  float Bopsize;
  float alpha;
  
  Bop(){
    x = random(0,width);
    y = random(0,height);
    
    Bopsize = random(100);
    alpha = random(255);
  }
  
  void drawBops(){
    noStroke();
    fill(0,150,255,alpha);
    ellipse(x,y,Bopsize,Bopsize);
  }
}