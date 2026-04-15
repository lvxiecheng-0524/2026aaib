//week08-2 會跟著mouse移動的氣球
void setup(){
size(500, 500);//視窗大小
img = loadImage("balloon.png");//讀入圖片
}
PImage img; // 圖片宣告（要再拉一次balloon.png到程式裏）
int x, y;//變數宣告
void draw(){
 background(255);//白色背景
 x = mouseX-96/2;//x座標(變數設定)
 y = mouseY-132;//y座標
image(img, x, y, 96, 132);//照著坐標畫氣球
}//注意，要再拉一次ballon.png到程式裏
