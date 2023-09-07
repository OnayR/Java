int presses;
int noHolding = 0;
int time = 11000 + millis();
int timer;
int a = 0;

boolean endTime = false;
boolean restart = false;


void setup () {
  size (300, 200);
  background (0);
  textSize (20);
  text ("Press Space to start", 65, 100);
}

void draw () {
  
  timer = time - millis();
  
  if (keyCode == 32 && endTime == false) {
    background (0, 255, 0);
    text (timer / 1000, 65, 100);
    println (timer / 1000);
    text (presses, 65, 120);
  }
  
  if (timer < 0) {
    endTime = true;
  } else if (time <= 10000) {
    endTime = false;
  }
  
  if (endTime == true) {
    background (255, 0, 0);
    text (presses, 65, 120);
    text ("Press Enter to restart.", 65, 100);
  } else if (endTime == false && restart == true) {
    background (0, 255, 0);
  }
  
  if (a < 1 && timer < 0) {
    a++;
  println ("your ending score is: " + presses + " Clicks.");
  }
}

void keyPressed () {
  
  while (noHolding == 0 && keyCode == 32 && timer > 0) {
  noHolding++;
  presses++;
  println (presses);
  }
  
  if (restart == true) {
    a = 0;
    restart = false;
    background (0, 255, 0);
    time = 11000 + millis();
    endTime = false;
    presses = 0;
  }
  
  if (keyCode == 10) {
    restart = true;
  }
}

void keyReleased () {
  noHolding = 0;
}

  
