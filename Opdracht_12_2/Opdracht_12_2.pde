class Leerling {
  String naam;
  int leeftijd;

  Leerling(String naam, int leeftijd) {
    this.naam = naam;
    this.leeftijd = leeftijd;
  }

  void printGegevens() {
    println("Leerling: " + naam + ", Leeftijd: " + leeftijd + " jaar");
  }
}

void setup() {
  Leerling leerling1 = new Leerling("Sophie", 15);
  leerling1.printGegevens(); 
}
