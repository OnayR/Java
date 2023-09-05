size(600,600);
background(255,255,255);

int xWaarde = 50;
int yWaarde = 50;

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
    rect(xWaarde, yWaarde, 50, 50);
  yWaarde = yWaarde + 50;
}
yWaarde = 50;
xWaarde = xWaarde + 50;
}
