  //week04-2
  void setup(){
    size(600,400);
  }
  void draw(){
    for (int y = 0; y < 400; y += 50){// 外面 for迴圈 對y
      for (int x = 0; x < 600; x += 50){//裏面 for迴圈 對x
         if (x < mouseX && mouseX < x+50) fill(#4894D1);
         else if(y <mouseY && mouseY < y+50) fill(#4894D1);
         else fill(#F7FFA5);
         rect(x, y, 50, 50 );
      }
    }
  }
