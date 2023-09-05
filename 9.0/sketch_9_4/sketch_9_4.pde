void setup () {
size (220, 220);

fill (255);
strokeWeight (15);
cube (10, 10, 210, 210);

}

void update () {

}

void cube (int xlb, int ylb, int xlo, int yro) {
  line (xlb, xlb, xlo, xlb);
  line (xlb, xlb, ylb, xlo);
  line (xlb, xlo, xlo, yro);
  line (xlo, yro, xlo, xlb);
}
