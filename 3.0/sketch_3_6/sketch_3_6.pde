size (1000, 480);

background (255, 255, 255);

textSize (20);
fill (0);

text ("Lijn", 160, 70);

text ("Rechthoek", 140, 240);

text ("Gevulde rechthoek met ovaal", 380, 240);

text ("Applet Started.", 0, 470);

text ("Taartpunt met ovaal eromheen", 690, 240);

text ("Afgeronde rechthoek", 100, 410);

text ("Gevulde ovaal", 445, 410);

text ("Cirkel", 795, 410);

line (50, 50, 333, 50);

noFill();
rect (50, 80, 283, 140);

ellipse (818, 320, 140, 140);

noStroke();
fill (255, 0, 127);
rect (363, 80, 283, 140);

noFill();
stroke (0);
ellipse (505, 150, 283, 140);

noFill();
ellipse (818, 130, 283, 140);

fill (255, 0, 127);
arc (818, 130, 283, 140, radians(320), radians(360));

noStroke();
ellipse (505, 320, 283, 140);

stroke (0);
noFill();
rect (50, 250, 283, 140, 25, 25, 25, 25);

noStroke();
ellipse (505, 320, 283, 140);
