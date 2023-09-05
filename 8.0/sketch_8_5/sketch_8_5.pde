size(50,50);
background(255,255,255);

int sizeC = 50;

for(int i = 1; i <= 5; i++){
  ellipse(25, 25, sizeC, sizeC);
  sizeC = sizeC - 10;
}
