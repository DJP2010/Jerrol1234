float mijnGetal;

void setup(){
  mijnGetal = mijnMethode(5, 6);
  println(mijnGetal);
}

void draw(){
  
}

float mijnMethode(float getal, float getaltwee){
  float gemiddelde = (getal + getaltwee) / 2.0;
  return gemiddelde;
}
