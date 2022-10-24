Balloon myBalloon; //creates a variable called myBalloon with a known size from class balloon
Balloon myBalloonTwo;
Balloon myBalloonThree;
int stringLengthOne = 50;
int stringLengthTwo = 50;
int stringLengthThree = 50;
void setup() {
  size(500, 500);
  myBalloon = new Balloon(height, 1.0, ((int)(Math.random()*255)), ((int)(Math.random()*255)), ((int)(Math.random()*255)));
  myBalloonTwo = new Balloon(height+50, 1.0, ((int)(Math.random()*255)), ((int)(Math.random()*255)), ((int)(Math.random()*255)));
  myBalloonThree = new Balloon(height+50, 1.0, ((int)(Math.random()*255)), ((int)(Math.random()*255)), ((int)(Math.random()*255)));
}
void draw() {
  background(50, 100, 200);

  fill(myBalloon.balloonR, myBalloon.balloonG, myBalloon.balloonB);
  myBalloon.inflate();
  myBalloon.levitate();
  ellipse(width/2, myBalloon.dHeight, myBalloon.dia, myBalloon.dia*1.25);
  line(width/2,height, width/2, (myBalloon.dHeight+0.5*(myBalloon.dia*1.25)));

  fill(myBalloonTwo.balloonR, myBalloonTwo.balloonG, myBalloonTwo.balloonB);
  myBalloonTwo.inflate();
  myBalloonTwo.levitate();
  ellipse(width/4, myBalloonTwo.dHeight, myBalloonTwo.dia, myBalloonTwo.dia*1.25);
  line(width/4, height, width/4, (myBalloonTwo.dHeight+0.5*(myBalloonTwo.dia*1.25)));

  fill(myBalloonThree.balloonR, myBalloonThree.balloonG, myBalloonThree.balloonB);
  myBalloonThree.inflate();
  myBalloonThree.levitate();
  ellipse(width/4+width/2, myBalloonThree.dHeight, myBalloonThree.dia, myBalloonThree.dia*1.25);
  line(width/4+width/2, height, width/4+width/2, (myBalloonThree.dHeight+0.5*(myBalloonThree.dia*1.25)));
}

/*class Bicycle
 {
 int nWheels;
 double dWeight;
 double dSpeed;
 void ride()
 {
 dSpeed = 10;
 }
 }*/
