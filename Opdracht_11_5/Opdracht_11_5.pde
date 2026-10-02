boolean gevonden;
String[] namen = {"Jan", "Jamiro", "Philip", "Monique", "Barnaby"};

void setup() {
  boolean gevonden = false;

  for (int i = 0; i < namen.length; i++) {
    if (namen[i].equals("Jan")) {
      gevonden = true;
    }
  }

  println(gevonden);
}
    
    
 
