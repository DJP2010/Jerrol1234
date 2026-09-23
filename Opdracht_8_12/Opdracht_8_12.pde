void setup() {
  size(300, 300);
  
  for (int i = 0; i < 10; i++) {
  for (int j = 0; j < 10; j++) {
      
   // Controleren of de som van de teller even of oneven is
  if ((i + j) % 2 == 0) {
  fill(255); // Wit
  } else {
  fill(0);   // Zwart
      }
      
  int x = 20 + (i * 20);
  int y = 20 + (j * 20);
  rect(x, y, 20, 20);
    }
  }
}
