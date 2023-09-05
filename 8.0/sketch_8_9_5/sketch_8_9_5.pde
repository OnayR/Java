size(500,500);
background(255,255,255);

int sizeC = 500;

for(int i = 1; i <= 50; i++){
  ellipse(250, 250, sizeC, sizeC);
  sizeC = sizeC - 10;
}
