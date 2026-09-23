void setup() {
  size(300, 300);
  for (int i = 0; i < 10; i++) {     // Kolommen (x-as)
  for (int j = 0; j < 10; j++) {    // Rijen (y-as)
      int x = 20 + (i * 20);
      int y = 20 + (j * 20);
      rect(x, y, 20, 20);
    }
  }
}
