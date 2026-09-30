void setup() {
  size(600, 400);

  tekenBos();
}

void tekenBoom(int x, int y) {
  // stam
  rect(x - 15, y, 30, 100);

  // kroon
  ellipse(x, y - 30, 120, 120);
}

void tekenBos() {
  tekenBoom(100, 250);
  tekenBoom(250, 280);
  tekenBoom(400, 230);
  tekenBoom(520, 270);
}
