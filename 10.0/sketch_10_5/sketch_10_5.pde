import controlP5.*;

ControlP5 cp;

Button Keer;

Button Plus;

Button Delen;

Button Min;

Textfield textfield1;

Textfield textfield2;

double mijnGetal;

double mijnGetal2;

void setup () {
  size (450, 75);
  background (255);
  cp = new ControlP5(this);
  
  Min = cp.addButton("MinKnop")
           .setPosition (420, 10)
           .setSize (20, 25)
           .setCaptionLabel ("-")
           .setColorBackground (color(200))
           .setColorLabel (color(0))
           .setColorForeground (color(150));
  
  Plus = cp.addButton("PlusKnop")
           .setPosition (390, 10)
           .setSize (20, 25)
           .setCaptionLabel ("+")
           .setColorBackground (color(200))
           .setColorLabel (color(0))
           .setColorForeground (color(150));
  
  Delen = cp.addButton("DelenKnop")
            .setPosition (360, 10)
            .setSize (20, 25)
            .setCaptionLabel ("/")
            .setColorBackground (color(200))
            .setColorLabel (color(0))
            .setColorForeground (color(150));
  
  Keer = cp.addButton("KeerKnop")
          .setPosition (330, 10)
          .setSize (20, 25)
          .setCaptionLabel ("*")
          .setColorBackground (color(200))
          .setColorLabel (color(0))
          .setColorForeground (color(150));
  
  textfield1 = cp.addTextfield("Textfield1")
                 .setPosition (10, 10)
                 .setSize (150, 25)
                 .setCaptionLabel ("-")
                 .setColorBackground (color(200))
                 .setColorLabel (color(0))
                 .setColorForeground (color(150));
  
  textfield2 = cp.addTextfield("Textfield2")
                 .setPosition (170, 10)
                 .setSize (150, 25)
                 .setCaptionLabel ("-")
                 .setColorBackground (color(200))
                 .setColorLabel (color(0))
                 .setColorForeground (color(150));

}

void draw () {
  noFill();
  rect (5, 5, 440, 35);
  rect (5, 45, 440, 25);
  
}

void KeerKnop () {
  mijnGetal = Integer.valueOf(textfield1.getText());
  mijnGetal2 = Integer.valueOf(textfield2.getText());
  
  textSize (20);
  background (255);
  fill(0);
  text (mijnGetal + " Keer " + mijnGetal2 + " = " + mijnGetal / mijnGetal2, 10, 60);
  println (mijnGetal + " Keer " + mijnGetal2 + " = " + mijnGetal * mijnGetal2);
}

void MinKnop () {
  mijnGetal = Integer.valueOf(textfield1.getText());
  mijnGetal2 = Integer.valueOf(textfield2.getText());
  
  textSize (20);
  background (255);
  fill(0);
  text (mijnGetal + " Min " + mijnGetal2 + " = " + mijnGetal / mijnGetal2, 10, 60);
  println (mijnGetal + " Min " + mijnGetal2 + " = " + (mijnGetal - mijnGetal2));
}

void PlusKnop () {
  mijnGetal = Integer.valueOf(textfield1.getText());
  mijnGetal2 = Integer.valueOf(textfield2.getText());
  
  textSize (20);
  background (255);
  fill(0);
  text (mijnGetal + " Plus " + mijnGetal2 + " = " + mijnGetal / mijnGetal2, 10, 60);
  println (mijnGetal + " Plus " + mijnGetal2 + " = " + (mijnGetal + mijnGetal2));
}

void DelenKnop () {
  mijnGetal = Integer.valueOf(textfield1.getText());
  mijnGetal2 = Integer.valueOf(textfield2.getText());
  
  textSize (20);
  background (255);
  fill(0);
  text (mijnGetal + " Delen door " + mijnGetal2 + " = " + mijnGetal / mijnGetal2, 10, 60);
  println (mijnGetal + " Delen door " + mijnGetal2 + " = " + mijnGetal / mijnGetal2, 0, 0);
}
