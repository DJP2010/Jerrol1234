int[] getallen = {5, 2, 8, 5, 1, 5, 2, 5, 3, 2};

void setup() {
  // We roepen de zoeker aan voor getal 5 en getal 2
  println("Getal 5 zit er " + telGetal(5) + " keer in.");
  println("Getal 2 zit er " + telGetal(2) + " keer in.");
}

// Dit is onze "zoeker" (methode)
int telGetal(int zoekt) {
  int teller = 0; // We beginnen met tellen bij 0
  
  // We lopen kluisje voor kluisje af (van kluisje 0 tot de laatste)
  for (int i = 0; i < getallen.length; i++) {
    
    // Zitten we in het juiste kluisje?
    if (getallen[i] == zoekt) {
      teller = teller + 1; // Ja! Tel er 1 bij op.
    }
    
  }
  
  return teller; // Geef het totale aantal door aan de setup
}
