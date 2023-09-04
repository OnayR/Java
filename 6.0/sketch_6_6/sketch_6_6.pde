boolean dragonHunt = true;
boolean foodNeed = true;
boolean Orcs = true;
boolean heroOfTheVillage = true;
boolean mainQuest = true;

int Quests = 0;

if (dragonHunt == true) {
  Quests ++;
}
if (foodNeed == true) {
  Quests ++;
}
if (Orcs == true) {
  Quests ++;
}
if (heroOfTheVillage == true) {
  Quests ++;
}

if (Quests >= 3 && mainQuest == true) {
  println ("Congratulations! You've completed an impossible task! Click here to claim your rewards!");
}
else if (Quests >= 3) {
  println ("Congratulations! You have found it all, now to just save humanity, you're almost there!");
}
else if (mainQuest == true) {
  println ("You have prevented humanity's destruction! now you can finally rest in peace and catch some fish.");
}
else {
  println ("You're almost there!");
}
