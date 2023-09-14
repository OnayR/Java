//Eind Opdracht 1. Pong

int Player1;
int Player2;
int locaX2 = 30;
int locaY = 220;
int locaX = 655;
int locaY2 = 220;

int rad = 10; 
float xpos, ypos;   

float xspeed = 2.8;  
float yspeed = 2.2;

int botLocationX = 655;
int botLocationY = 220;

int xdirection = 1;  
int ydirection = 1;
int point1 = 0;
int point2 = 0;
int maxPoint = 0;
int maxHit = 0;
float totalPoints;


void setup() {
  size(700, 500);
  background(255);
  ellipseMode(RADIUS);
  xpos = width / 2;
  ypos = height / 2;
}

void draw() {
  background (255);
//Movement voor character 1
movement1();

//Movement voor character 2
movement2();

xpos = xpos + ( xspeed * xdirection );
ypos = ypos + ( yspeed * ydirection );

totalPoints = point1 + point2;

xspeed = xspeed + (totalPoints / 1000);
yspeed = yspeed + (totalPoints / 700);


if (xpos > width - rad || xpos < rad) {
    xdirection *= -1;
    xpos = width / 2;
    ypos = height / 2;
    maxPoint = 0;
  }
  if (ypos > height - rad || ypos < rad) {
    ydirection *= -1;
  }
  
if (xpos >= 680 && maxPoint == 0) {
  point1++;
  maxPoint++;
  println (point1);
} else if (xpos < 30 && maxPoint == 0) {
  point2++;
  maxPoint++;
}

fill (0);
text (point1, 10, 10);
text (point2, 685, 10);


//bounce back
if (xpos > locaX && xpos < locaX + 10 && ypos > locaY && ypos < locaY + 60 && maxHit == 0) {
  xdirection *= -1;
  maxHit++;
}
if (xpos > locaX2 && xpos < locaX2 + 10 && ypos > locaY2 && ypos < locaY2 + 60 && maxHit == 0) {
  xdirection *= -1;
  maxHit++;
}
if (xpos > botLocationX && xpos < botLocationX + 10 && ypos > botLocationY && ypos < botLocationY + 60 && maxHit == 0) {
  xdirection *= -1;
  maxHit++;
}

if (xpos == width / 2) {
  maxHit = 0;
}

if (botLocationY < ypos) {
  botLocationY = botLocationY + 5;
} else if (botLocationY > ypos) {
  botLocationY = botLocationY - 5;
}


//character spawn
  line(350, 0, 350, 500);
  character(30, locaY2);
  bot(655, botLocationY);
  ellipse(xpos, ypos, rad, rad);
  
}






void movement1() {
      if (keyCode == 40) {
    background(255);
  locaY = locaY + 5;
} else if (keyCode == 38) {
  background(255);
  locaY = locaY - 5;
}
if (locaY < -50) {
  locaY = 490;
} else if (locaY > 490) {
  locaY = -50;
}

}

void movement2() {
     if (keyCode == 83) {
    background(255);
  locaY2 = locaY2 + 5;
} else if (keyCode == 87) {
  background(255);
  locaY2 = locaY2 - 5;
}
if (locaY2 < -50) {
  locaY2 = 490;
} else if (locaY2 > 490) {
  locaY2 = -50;
}

}

void character(int locaX, int locaY) {
  rect (locaX, locaY, 10, 60, 10);
}

void bot(int locaX, int locaY) {
  rect (locaX, locaY, 10, 60, 10);
}




/*
Scope.
Een simpel pong spel met een punten systeem.

*/

/*
Variables
Points
Player1
Player2
LocationX
LocationY

*/

/*
Skelet
Movement voor player 1/2
Ball


*/

/*
Testgevallen

*/

/*
Planning

Wat ga ik als eerst doen? Ik zal beginnen aan de beweging van de 2 spelers.
Daarna zal ik een bal maken dat heen en weer kaatst.

*/
