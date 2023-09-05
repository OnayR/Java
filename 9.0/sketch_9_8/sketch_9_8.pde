void setup() {
  size(500, 500);
  tekenDriehoek(0, 490, 250, 10, 490, 490);
}
 
void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3) {
    triangle(x1, y1, x2, y2, x3, y3);
}
