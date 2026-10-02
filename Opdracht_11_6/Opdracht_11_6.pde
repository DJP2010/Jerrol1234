void setup() {
int[] getallen = {5, 2, 8, 5, 1, 5, 2, 5, 3, 2};
  
 // 1. Het getal dat we willen zoeken en een teller die op 0 begint
int gezochtGetal = 5;
int teller = 0;
  
// 2. Met een for-loop door de array lopen
  for (int i = 0; i < getallen.length; i++) {
  if (getallen[i] == gezochtGetal) {
      teller = teller + 1; // Teller verhogen als het getal klopt
    }
  }
  
  // 3. Het resultaat in de console printen
  println("Het getal " + gezochtGetal + " komt " + teller + " keer voor.");
}
