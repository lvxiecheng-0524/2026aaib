//week13-1 好玩的打地鼠
//接續 week12-1 week11-1的程式
PImage img;//外面宣告變數（可讓別人裏面使用）
void setup(){
    size(300,400);//視窗大小
    img = loadImage("gopher.png");
}
int [][]a={{0,0,0},{0,0,0},{0,0,0}};
void draw(){
    background(0xFFFFFFF2);
    if(frameCount%60==0){
      int i = PApplet.parseInt(random(3)), j = PApplet.parseInt(random(3));
      a[i][j] = 60;
    }
    for(int i=0;i<3;i++){
        for(int j=0;j<3;j++){
            float x = j*100, y = i*100+100;
            if(a[i][j]>0){
                a[i][j]-=1;
                y-=100*sin(a[i][j]*PI/60);
            }
            image(img,x,y,100,100);
        }
        rect(0,100+i*100,300,100);
    }
}
