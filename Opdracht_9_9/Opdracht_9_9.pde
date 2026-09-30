void setup() {
  size(600, 400);

  tekenBoom(200, 300);
}

void tekenBoom(int x, int y) {
  // stam
  rect(x - 15, y, 30, 100);

  // kroon
  ellipse(x, y - 30, 120, 120);
}
