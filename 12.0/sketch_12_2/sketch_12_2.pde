int presses;
int noHolding = 0;
int secondsDown;
int time = 10000;
int timer;
boolean endTime = true;
boolean restart = false;


void setup () {
  size (300, 200);
  background (0);
  textSize (20);
  text ("Press Space to start", 65, 100);
}

void draw () {
  timer = time - millis();
  
  if (restart == true) {
    endTime = false;
    presses = 0;
    restart = false;
  }
  
  if (keyCode == 32 && endTime == false) {
    background (0, 255, 0);
    text (timer / 1000, 65, 100);
  }
  
  if (timer < 0) {
    endTime = true;
    println ("your ending score is: " + presses);
  }
  
  if (endTime == true) {
    background (255, 0, 0);
    text (presses , 65, 120);
  }
  
}

void keyPressed () {
  endTime = false;
  time = 10000;
  while (noHolding == 0 && keyCode == 32) {
  noHolding++;
  presses++;
  println (presses);
  text (presses, 65, 120);
  }
  
  if (noHolding == 0 && keyCode == 10) {
    restart = true;
  }
}

void keyReleased () {
  noHolding = 0;
}

  
