void setup()
{
  background(0);
  size(560, 590);
}
int speed = 5;
void draw()
{
  background(0);
  frameRate(speed);
  int sum = 0;
  for (int r = 10; r<=500; r=r+110)
  {
    for (int c = 10; c<=500; c=c+110)
    {
      Die bob = new Die(r, c);
      bob.roll();
      bob.show();
      sum = sum + bob.rollNum;
    }
  }
  textSize(25);
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  text(sum, 265, 577);
}

void mousePressed() {
  if (mouseButton == LEFT) {
      speed = speed + 15;
  } else if (mouseButton == RIGHT) {
    speed = 0;
  }
  redraw();
}
class Die //models one single dice cube
{
  int myX;
  int myY;
  int rollNum;

  Die(int x, int y) //constructor
  {
    roll();
    myX=x;
    myY=y;
  }
  void roll()
  {
    rollNum = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    rect(myX, myY, 100, 100, 10);

    if (rollNum == 1)
    {
      fill(0);
      ellipse(myX+50, myY+50, 10, 10);
    } else if (rollNum == 2)
    {
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+75, myY+75, 10, 10);
    } else if (rollNum == 3)
    {
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+75, myY+75, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    } else if (rollNum == 4)
    {
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+75, myY+75, 10, 10);
      ellipse(myX+25, myY+75, 10, 10);
      ellipse(myX+75, myY+25, 10, 10);
    } else if (rollNum == 5)
    {
      fill(0);
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+75, myY+75, 10, 10);
      ellipse(myX+25, myY+75, 10, 10);
      ellipse(myX+75, myY+25, 10, 10);
    } else if (rollNum == 6)
    {
      fill(0);
      ellipse(myX+25, myY+50, 10, 10);
      ellipse(myX+75, myY+50, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+75, myY+75, 10, 10);
      ellipse(myX+25, myY+75, 10, 10);
      ellipse(myX+75, myY+25, 10, 10);
    }
  }
}

