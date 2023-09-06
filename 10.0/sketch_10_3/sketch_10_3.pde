import controlP5.*;

float mijnGetal;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(800,800);
  background(255,255,255);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1");
  
  knop1.setCaptionLabel("Test");
  
  tekstveld1 = cp
                .addTextfield("TextInput1")
                .setPosition(100,100)
                .setCaptionLabel("Type iets!")
                .setColorLabel(color(255,0,0));
}

void draw(){

}

void Knop1(){
  mijnGetal = Integer.valueOf(tekstveld1.getText());
  println("Het Totale aantal is: " + mijnGetal * 1.21);
}
