double startX = Math.random()*500;
double startY = 0;
double endX = Math.random()*500;  
double endY = 0;
int stroke = 0;
int clicks = 0;
int colores = 0;

void setup(){
  size(500,500);

}
void draw(){
  //stroke((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
  if (stroke % 2 == 0){
    strokeWeight(12);
    stroke(48,126,64);
    stroke-=1;
  }
  else{
    strokeWeight(8);
    stroke(56,163,42);
    stroke+=1;
  }
  endX = startX + Math.random()*20 - 10;
  endY = startY + Math.random()*20;
  line((float)startX,(float)startY,(float)endX,(float)endY);
  startX=endX;
  startY=endY;
  noFill();
  for (int y = 150; y>=-50;y-=10){
    strokeWeight(10);
    stroke(y-53, y-12, y-89);
    bezier(0,y,100,y-120,300,y-140,500,y-150);
  }
  for (int y = 500;y<=550;y+=5){
    for (int x = 0; x<=500;x+=50){  
      strokeWeight(2);
      stroke(107,142,35);
      fill(127,255,0);
      triangle(x,y,x+25,y-25,x+50,y);
    }
    colores += 25;
  }
}
void mousePressed(){
  startX = Math.random()*500;
  startY = 0;
  endX = Math.random()*500;
  endY = 0;
  clicks++;
  if (clicks > 10){
    background((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
    clicks = 0;
  }
}
