

void setup () {
  size (2500, 2000);
  background (255);
  
}

void draw () {
  textSize (30);
  fill (0);
  text ("Want to reset? Press Space.", 10, 30
  );
  
}

void mouseDragged () {
  noStroke();
  fill (random(200, 255), random(200, 255), random(200, 255));
  rect (mouseX, mouseY, 20, 20);
}

void keyPressed () {
  if (keyCode == 32) {
    background (255);
  }
}
