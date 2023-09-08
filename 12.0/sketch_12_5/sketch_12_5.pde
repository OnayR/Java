
int coordsX;
int coordsY;
  
  boolean a = false;

void setup () {
  size (500, 500);
  background (255);
  
}

void draw () {
  

}

void mouseClicked () {

  if (a == false) {
    a = true;
    line (10, 10, 50, 50);
    coordsX = coordsX + 50;
    coordsY = coordsY + 50;
  } else {
    line (coordsX, coordsY, mouseX, mouseY);
    coordsX = mouseX;
    coordsY = mouseY;
  }
}
