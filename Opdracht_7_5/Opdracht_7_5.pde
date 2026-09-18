void setup() {
  int cijfer = 11;

  if (cijfer >= 1 && cijfer <= 3) {
    println("Slecht");
  } else if (cijfer == 4) {
    println("Onvoldoende");
  } else if (cijfer == 5) {
    println("Matig");
  } else if (cijfer >= 6 && cijfer <= 7) {
    println("Voldoende");
  } else if (cijfer >= 8 && cijfer <= 10) {
    println("Goed");
  } else {
    println("Verkeerd cijfer ingevoerd");
  }
}
