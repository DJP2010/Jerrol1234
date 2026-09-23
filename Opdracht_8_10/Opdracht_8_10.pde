void setup() {
  size(400, 400);
  noFill();
  for (int i = 0; i < 5; i++) {
    // Tekent 5 vierkanten die telkens groter worden en opschuiven
  rect(20 + (i * 30), 20 + (i * 30), 30 + (i * 20), 30 + (i * 20));
  }
}
