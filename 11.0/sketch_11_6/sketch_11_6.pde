int [] Aantal = {1, 6, 6, 6, 5, 4, 4, 4, 4, 3, 8};
int a = 0;

void setup() {
  
  
  for (int i = 0; i < Aantal.length; i++) {
    if (Aantal[i] == 4) {
      a++;
      println (a);
  }
  }
}
  
