int time = 0 - second();
int timeM = 0;
int timer;
int noHolding = 0;
int timeSet;
int a = 0;
int i = 0;
boolean restart = false;

void setup () {
  size (500, 200);
  background (0);
  textSize (20);
  text ("Click Space to start.", 10, 30);
}

void draw () {
  timer = time + second();
  
  if (timer < 0) {
    timer = timer + 60;
  }
  if (timer == 59 && i == 0) {
    timeM++;
    i++;
  }
  if (timer == 1) {
    i = 0;
  }
  
  if (keyCode == 32 && a == 0 && restart == false) {
    background (0);
    text ("Press Enter to stop.", 10, 30);
    text (timer + " Seconden.", 123, 120);
    text (timeM + " Minuten en ", 10, 120);
    a = 0;
  }
  
  if (keyCode == 10) {
    a++;
  }
  
  if (a == 0) {
  println (timer);
  } else if (a == 1) {
        timeSet = timer + second();
    println (timeSet - timeSet + timer);
  }
  
}

void keyPressed () {
if (keyCode == 10) {
    timeSet = timer + second();
    
    background (0);
    text (timer + " Seconden.", 123, 120);
    text (timeM + " Minuten en ", 10, 120);
  }
}
