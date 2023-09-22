int angle = 0;
int snakeSize = 3;
int time = 0;
int[] headX = new int[2500];
int[] headY = new int[2500];
int appleX = 0;
int appleY = 0;
boolean endGame = false;
boolean remake = true;

void setup() {
  restart();
  size (500, 500);
  textAlign (CENTER);
  fill (0);
}

void draw() {
  println(keyCode);
  if (endGame)
  {
  } else
  {
    time++;
    fill(255, 0, 0);
    stroke(0);
    rect(appleX, appleY, 8, 8);
    fill(0);
    stroke(0);
    rect(0, 0, width, 10);
    rect(0, height - 10, width, 10);
    rect(0, 0, 10, height);
    rect(width - 10, 0, 10, height);
    if ((time % 5) == 0)
    {
      travel();
      display();
      checkDead();
    }
  }
}



void keyPressed() {

  if (keyCode == 87 && angle != 270) {
    angle = 90;
  }
  if (keyCode == 83 && angle != 90) {
    angle = 270;
  }
  if (keyCode == 65 && angle != 0) {
    angle = 180;
  }
  if (keyCode == 68 && angle != 180) {
    angle = 0;
  }
  if (keyCode == 10) {
    restart();
  }
}




void travel()
{
  for (int i = snakeSize; i > 0; i--)
  {
    if (i != 1)
    {

      headX[i]=headX[i-1];
      headY[i]=headY[i-1];
    } else
    {

      switch(angle)
      {
      case 0:
        headX[1]+=10;
        break;
      case 90:
        headY[1]-=10;
        break;
      case 180:
        headX[1]-=10;
        break;
      case 270:
        headY[1]+=10;
        break;
      }
    }
  }
}




void display()
{

  if (headX[1]==appleX && headY[1]==appleY)
  {

    snakeSize+=round(random(3)+1);
    remake=true;
    while (remake)
    {
      appleX=(round(random(47))+1) * 10;
      appleY=(round(random(47))+1) * 10;
      for (int i=1; i<snakeSize; i++)
      {

        if (appleX == headX[i] && appleY == headY[i])
        {
          remake =true;
        } else
        {
          remake =false;
          i=1000;
        }
      }
    }
  }

  stroke(0);
  fill(255);
  rect(headX[1], headY[1], 8, 8);

  stroke(255);
  fill(255);
  rect(headX[snakeSize], headY[snakeSize], 8, 8);
}




void restart() {
  background(255);
  headX[1] = 250;
  headY[1] = 250;
  for (int i=2; i<1000; i++)
  {
    headX[i] = 0;
    headY[i] = 0;
  }
  endGame = false;
  appleX = (round(random(49))+1) * 10;
  appleY = (round(random(49))+1) * 10;
  snakeSize = 5;
  time = 0;
  angle = 0;
  remake = true;
}




void checkDead() {
  for (int i=2; i<=snakeSize; i++)
  {

    if (headX[1]==headX[i] && headY[1]==headY[i]) {
      fill(255);
      rect(125, 125, 160, 100);
      fill(0);
      text("GAME OVER", 200, 150);
      text("Score:  " + str(snakeSize-1) + " units long", 200, 175);
      text("To restart, press Enter.", 250, 250);
      endGame = true;
    }

    if (headX[1]>=(width-10) || headY[1]>=(height-10) || headX[1]<=9 || headY[1]<=9) {
      stroke(0);
      fill(255);
      rect(175, 165, 160, 100);
      fill(0);
      text("GAME OVER", 250, 200);
      text("Score:  " + str(snakeSize-1) + " units long", 250, 225);
      text("To restart, press Enter.", 250, 250);
      endGame = true;
    }
  }
}
