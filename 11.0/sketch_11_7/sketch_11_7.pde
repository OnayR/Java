import controlP5.*;

ControlP5 cp;

String[] Names = new String[10];

int k = 0;

int x = 10;

int y = 300;

Button button1;

Textfield textfield1;

void setup () {
  cp = new ControlP5(this);
 size (500, 500);
 background (255);
 
 button1 = cp.addButton("Button1")
             .setPosition (10, 10)
            .setSize (200, 100)
            .setCaptionLabel ("Click Here")
            .setColorBackground (color(200))
            .setColorLabel (color(0))
            .setColorForeground (color(150));
 
 textfield1 = cp.addTextfield("Textfield1")
             .setPosition (220, 10)
            .setSize (200, 100)
            .setCaptionLabel ("Type your names here.")
            .setColorBackground (color(200))
            .setColorLabel (color(0))
            .setColorForeground (color(150));
 
}

void draw () {
  
}



void Button1 () {
  fill(0);
  k++;
  Names [k] = textfield1.getText();
  text (Names);
  x = x + 30;
  y = y + 10;
  
  
  println (k);
  
}
