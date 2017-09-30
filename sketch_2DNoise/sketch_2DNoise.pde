//GRADIENT
//size(800,800);

//float c = 0;
//noStroke();

//for(int x = 0; x<=width; x++){
//  c = c + 0.31875;
//  for(int y = 0; y<=height; y++){
//    fill(c);
//    rect(x,y,1,1);
//}
//}

//RANDOM NOISE
//size(800,800);

//noStroke();

//for(int x = 0; x<=width; x++){
//  for(int y = 0; y<=height; y++){
//    fill(random(255));
//    rect(x,y,1,1);
//  }
//}

//Sininininininfffy

size(800,800);
noStroke();

float noiseX=0;
float noiseY=5;

for(int x = 0; x<=width; x++){
  noiseX=noiseX+0.1;
  for(int y = 0; y<=height; y++){
     noiseY=noiseY+0.1;
    fill(noise(noiseX, noiseY) * 255); //sin
    rect(x,y,1,1);
  }
}