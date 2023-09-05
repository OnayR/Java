boolean gevonden;
String[] Namen = {"Jose", "Tom", "Neaer", "Jan", "Geon"};

void setup(){
  gevonden = false;
  for(int i = 0; i < Namen.length; i++){

    if(Namen[i] == "Jan"){
    gevonden = true;
    }
    
  }  
  
  println(gevonden);

}
