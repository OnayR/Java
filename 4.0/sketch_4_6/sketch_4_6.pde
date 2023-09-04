size (200, 200);
background (0);
textSize (20);

float One;
float Two;
float Three;

String Name = "Rida";

String Uit;


One = 9.6;
Two = 7.5;
Three = 8.1;

float Mid = (One + Two + Three) / 3;

boolean pass;

if (Mid >= 5.5) {
  pass = true;
}
else {
  pass = false;
}

if (pass == true) {
  
  Uit = "Geslaagt";
  background (0, 255, 0);
  text ("Je bent geslaagt!", 25, 100);
}
else {
  
  Uit = "Gezakt";
  background (255, 0, 0);
  text ("Je bent gezakt :(", 25, 100);
}


println (Name + "'s gemiddeld cijfer is " + nf (Mid, 0, 1) + " Wat betekent dat " + Name + " is " + Uit + ".");
