//week14-1 好玩的打地鼠 结合week13-1 week10-1
PImage img;
void setup(){
  size(300,400);
  img = loadImage("gopher.png");
}
void mousePressed(){
  int i =mouseY / 100, j = mouseX / 100;
  if(a[i][j]>0){
      a[i][j] = -120;
  }
}
int [][]a = {{0,0,0},{0,0,0},{0,0,0}};
void draw(){
  background(0xFFFFFFF2);
  fill(0xFFFFFFF2);
  if (frameCount%60==0){
    int i = int (random(3)),j = int (random(3));
    a[i][j] = 60;
  }
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      float x = j*100,y = i*100+100;
      if (a[i][j]>0){
        a[i][j] -=1;
        y -=100*sin(a[i][j]*PI/60);
        image(img,x,y,100,100);
      }else if(a[i][j]<0){
        y-=100;
        rect(x,y,100,100);
        line(x,y,x+100,y+100);
        line(x+100,y,x,y+100);
        a[i][j] +=1;
      }
    }
    rect(0,100+i*100,300,100);
  }
}
