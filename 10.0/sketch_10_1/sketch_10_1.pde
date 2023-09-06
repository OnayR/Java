import controlP5.*;

ControlP5 cp5;

void setup () {
   size (200, 80);

   cp5 = new ControlP5(this);
   
   background (0);
   
   Button button1 = cp5.addButton ("Button1")
                    .setPosition (10, 10)
                    .setSize (60, 60)
                    .setCaptionLabel ("Click me");
   
   Button button2 = cp5.addButton ("Button2")
                    .setPosition (130, 10)
                    .setSize (60, 60)
                    .setCaptionLabel ("Click me");
                    
   button1.setColorBackground(color(100));
   button2.setColorBackground(color(100));
  
}

void draw () {
  
}

void Button1() {
  println ("Helaas! Fout!");
}

void Button2() {
  println ("Goed Gedaan!");
}
