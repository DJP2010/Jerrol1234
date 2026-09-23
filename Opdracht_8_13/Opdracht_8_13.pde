void setup() {
  size(300, 400);
  background(255);
  fill(0);
  textSize(18);
  
  int tafel = 9; // Verander dit getal om een andere tafel te tonen
  
  for (int i = 1; i <= 10; i++) {
    int antwoord = i * tafel;
    
    // Maak de tekststring: "1 x 9 = 9"
    String regel = i + " x " + tafel + " = " + antwoord;
    
    // Druk af op het scherm onder elkaar
    text(regel, 50, 30 + (i * 30));
  }
}
