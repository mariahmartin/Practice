float headsCounter = 0;
float tailsCounter = 0;
float coinsFlipped = 0;
void setup()
{
  size(500, 350);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw()
{
  {
   background(150);
  int numHeads = 0;
  for (int x = 50; x < 500; x = x + 60)
  {
    Coin bob = new Coin(x, 150);
    bob.show();
    if(bob.heads == true)
    {
      numHeads++;
    }
  }
  text("There are " + numHeads + " heads up coins",width/2,250);
  text("It produces heads " + (headsCounter/coinsFlipped) + "percent of the time & it produces tails " +(tailsCounter/coinsFlipped)+"percent of the time",width/2,300);
}

}
void mousePressed()
{
  redraw();
}
class Coin
{
  //three member variables
  boolean heads;
  int myX, myY;

  //three member functions
  Coin(int x, int y) {
    flip();
    myX = x;
    myY = y;
  }
  void flip()
  {
    coinsFlipped ++;
    if (Math.random() < .15)
    {
      heads = true;
      headsCounter++;
    } else
    {
      heads = false;
      tailsCounter++;
    }
  }

  void show()
    {
     noStroke();
     fill(255);
     ellipse(myX,myY,50,50);
     fill(0);
     if(heads == true)
     {
        text("heads",myX,myY);
     }
     else
     {
        text("tails",myX,myY);
     }    
   }    

}
