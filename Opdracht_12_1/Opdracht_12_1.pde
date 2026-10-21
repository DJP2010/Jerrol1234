class Rechthoek {
  float breedte;
  float hoogte;
  float x;
  float y;

  Rechthoek(float b, float h, float xPos, float yPos) {
    breedte = b;
    hoogte = h;
    x = xPos;
    y = yPos;
  }

  void teken() {
    rect(x, y, breedte, hoogte);
  }
}

Rechthoek r;

void setup() {
  size(400, 300);
  r = new Rechthoek(100, 60, 50, 50);
}

void draw() {
  background(255);
  r.teken();
}
