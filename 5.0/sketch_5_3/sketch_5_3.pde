float m;
int kg;

m = 1.8;
kg = 110;

float bmi = kg / (m * m);

println ("Met een gewicht van " + kg + " kg en een lengte van " + m * 100 + "cm, is jouw BMI " + nf (bmi, 0, 1) + ".");
