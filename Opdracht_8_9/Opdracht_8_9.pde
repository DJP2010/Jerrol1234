void setup() {
  size(400, 400);
  noFill();
  for (int i = 1; i <= 50; i++) {
 // Middelpunt staat op (0, 0)
  ellipse(0, 0, i * 10, i * 10);
  }
}
