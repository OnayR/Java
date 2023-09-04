boolean Sunset = false;
boolean Mountain = false;
boolean moon = true;
boolean stars = true;

if (Sunset == true && Mountain == true) {
  println ("Take a picture already!");
} 
else if (Sunset == true && moon == true) {
  println ("That's an eclipse!");
}
else if (moon == true && stars == true) {
  println ("go to sleep already!");
}
