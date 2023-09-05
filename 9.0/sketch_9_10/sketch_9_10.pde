void setup () {
  size (500, 500);

int i = 0;
int a = 450;


  
  strokeWeight (25);
  
  while (i <= 5) {
    Tree (a, 200, a, 500, 300, 150);
    i++;
    
    a = a - 100;
  }
  
}

void update () {
}

void Tree (int Core, int Core2, int Base, int Base2, int Mid, int Size) {
  
  stroke (150, 75, 0);
  line (Core, Core2, Base, Base2);
  
  fill (50, 250, 0);
  noStroke();
  ellipse (Core, Core2, Size, Size);
  
  ellipse (Core, Mid, Size, Size);
}
