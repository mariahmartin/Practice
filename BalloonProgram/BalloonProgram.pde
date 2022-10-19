int myInt = 5;
int myWidth = 10;
int myHeight = 10;
Balloon bob, sue;
void setup() {
  size(500, 300);
  bob = new Balloon(width/2, height/2);
  sue = new Balloon(50, 80);
}
void draw() {
  /*background(255);
   bob.move();
   bob.show();
   sue.move();
   sue.show();*/
}

  void mouseDragged() {
    background(255);
    bob.move();
    bob.smallBalloon();
}
void mousePressed() {
  background(255);
  bob.smallBalloon();
}


class Balloon {
  int myX;
  int myY;
  Balloon(int x_, int y_) {
    myX = x_;
    myY = y_;
  }
  void move() {
    myWidth += 5;
    myHeight += 5;
  }
  int myR = ((int)(Math.random()*255));
  int myG= ((int)(Math.random()*255));
  int myB= ((int)(Math.random()*255));
  int myT= ((int)(Math.random()*255));
  void smallBalloon() {
    fill(myR, myG, myB, myT);
    ellipse(myX, myY, myWidth, myHeight);
  }
  /*void popBalloon() {
   if (myWidth == width) {
   background(255);
  /* }else if (myHeight == height) {
   background(255);
   }else{
   ;
   }*/
}
