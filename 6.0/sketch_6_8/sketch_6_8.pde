float cijfer = 8.1;
boolean diploma = false;
boolean cumlaude = false;

if(cijfer >= 5.5){
  diploma = true;
}
if (cijfer >= 8) {
  cumlaude = true;
}

if(cumlaude){
  println("Gefeliciteerd!!!!!!");
}
else if (diploma) {
  println ("Gefeliciteerd");
}
else if (cijfer < 5.5) {
  println ("Helaas!");
}
