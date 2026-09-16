float gewicht;
float lengte;
float lengteMeter;
float bmi;

void setup() {
 gewicht = 110;
 lengte = 180;

 lengteMeter = lengte / 100;
 bmi = gewicht / (lengteMeter * lengteMeter);

 println("Met een gewicht van " + gewicht + " kg en een lengte van " + lengte + " cm, is jouw BMI " + round(bmi));
