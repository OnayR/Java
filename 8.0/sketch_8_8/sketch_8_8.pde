int i = 0;
int j = 1;
int door = 0;


while (door <= 200) {
  i = i + j;
  println (i);
  j = i - j;
  door++;
}
