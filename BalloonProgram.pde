int myWidth = 10;
int myHeight = 10;
int myR = ((int)(Math.random()*255));
int myG = ((int)(Math.random()*255));
int myB = ((int)(Math.random()*255));
int myT = ((int)(Math.random()*255));

Balloon bob, sue;
void setup() {
  size(500, 300);
  bob = new Balloon(width/2, height/2);
  sue = new Balloon(50, 80);
}

void draw() {
  background(255);
}

void mouseDragged() {
  bob.move();
  bob.smallBalloon();
  fill(myR, myG, myB, myT);
  if (myWidth == width||myHeight == height) {
    myWidth = 0;
    myHeight = 0;
    myR = ((int)(Math.random()*255));
    myG = ((int)(Math.random()*255));
    myB = ((int)(Math.random()*255));
    myT = ((int)(Math.random()*255));
  }
}

/*void mouseReleased() {
  myWidth = 0;
  myHeight = 0;
}*/

void mousePressed() {
  bob.move();
  bob.smallBalloon();
  fill(myR, myG, myB, myT);
  if (myWidth == width||myHeight == height) {
    myWidth = 0;
    myHeight = 0;
    myR = ((int)(Math.random()*255));
    myG = ((int)(Math.random()*255));
    myB = ((int)(Math.random()*255));
    myT = ((int)(Math.random()*255));
  }
  
  /*myWidth = 0;
  myHeight = 0;
  bob.smallBalloon();
  myR = ((int)(Math.random()*255));
  myG = ((int)(Math.random()*255));
  myB = ((int)(Math.random()*255));
  myT = ((int)(Math.random()*255));
  //redraw();*/
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

  void smallBalloon() {
    ellipse(myX, myY, myWidth, myHeight);
  }
}
