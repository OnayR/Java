/*
  Robot robot1 = new Robot("Tom", "red", 30);
  Robot robot2 = new Robot("Jerry", "blue", 40);
*/

void setup() {

  Robot robot1 = new Robot();
  robot1.name = "Rowen";
  robot1.colour = "red";
  robot1.weight = 30;
  
  
  Robot robot2 = new Robot();
  robot2.name = "Bob";
  robot2.colour = "blue";
  robot2.weight = 40;


  robot1.introduceSelf();
  robot2.introduceSelf();
  
   }



class Robot {
    String name;
    String colour;
    int weight;

/*
    Robot(String givenName, String givenColor, int givenWeight) {
        this.name = givenName;
        this.colour = givenColor;
        this.weight = givenWeight;
    }
*/

    void introduceSelf() {
        println("My name is " + this.name);
    }
}
