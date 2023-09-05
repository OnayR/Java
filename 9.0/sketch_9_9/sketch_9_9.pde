void setup () {
  size (500, 500);
 
  strokeWeight (25);
  Tree (250, 200, 250, 500, 250, 150);
}

void update () {

}

void Tree (int Core, int Core2, int Base, int Base2, int Mid, int Size) {
  
  stroke (150, 75, 0);
  line (Core, Core2, Base, Base2);
  
  fill (50, 250, 0);
  noStroke();
  ellipse (Core, Core2, Size, Size);
  
  ellipse (Mid, Mid, Size, Size);
}
  
