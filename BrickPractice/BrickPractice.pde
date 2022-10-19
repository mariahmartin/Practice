//********* Brick Practice ***********//
void setup() {
  size(380,385);
  noLoop();
}
void draw() {
  for(int y = 0; y<height;y+=15)
  {
    for(int x = 0; x<width;x+=55)
    {
      Brick bob = new Brick(x,y);
      bob.show();
      System.out.println(x);
    }
  }
}
class Brick {
  int myX, myY;
  Brick(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void show()
  {
    noStroke();
    fill(255,0,0);
    rect(myX,myY,50,10);
  }
}
