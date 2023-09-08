int X = 235;
int Y = 235;


void setup () {
  size (500, 500);
  background (255);
  rect (235, 235, 30, 30);
}

void draw () {
  
  println (keyCode);
}

void keyPressed () {
  
  if (keyCode == 37) {
    X = X - 10;
  } else if (keyCode == 38) {
    Y = Y - 10;
  } else if (keyCode == 39) {
    X = X + 10;
  } else if (keyCode == 40) {
    Y = Y + 10;
  }
  background (255);
  rect (X, Y, 30, 30);
  
}
