import controlP5.*;



ControlP5 cp5;

Button button1;

Button button2;

int j = 0;
int k = 0;
int Total = 0;

void setup () {
   size (2000, 800);
   
   textSize (80);

   cp5 = new ControlP5(this);
   
   background (0);
   
   button1 = cp5.addButton ("Button1")
                    .setPosition (40, 100)
                    .setSize (600, 600)
                    .setCaptionLabel ("Studenten");
   
   button2 = cp5.addButton ("Button2")
                    .setPosition (1300, 100)
                    .setSize (600, 600)
                    .setCaptionLabel ("Ouders");
                    
   button1.setColorBackground(color(100));
   button2.setColorBackground(color(100));
  
}


void Button1() {
Total++;
k++;
println("The amount of students present is: " + k);
}


void Button2(){
Total++;
j++;
println("The amount of parents present is: " + j);


}

void draw () {
  background (0);
   text ("The total amount of people present is: " + Total, 30, 80);
}
