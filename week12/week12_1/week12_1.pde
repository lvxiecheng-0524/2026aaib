//week12-1 好玩的地鼠(有圖片)
PImage img;//圖片的變數 img
void setup(){
 size(300,300);//視窗大小
 img = loadImage("gopher.png");//讀入圖檔
}
void draw(){
    background(128);//灰色背景
    image(img,0,0,100,100);//畫出圖片
    //函數呼叫，有5個參數：(圖片，x，y，寬，高)
}
