void setup() {
  size(200, 200);
  mijnVierkant(50, 50, 100, 100);
}

void draw() {
}

void mijnVierkant(int x, int y, int breedte, int hoogte) {
  line(x, y, x + breedte, y);
  line(x + breedte, y, x + breedte, y + hoogte);
  line(x, y + hoogte, x + breedte, y + hoogte);
  line(x, y, x, y + hoogte);
}
