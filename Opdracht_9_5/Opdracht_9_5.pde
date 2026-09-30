void setup() {
  String resultaat = voegSamen("Hallo ", "dit ", "is ", "een test!");
  println(resultaat);
}

String voegSamen(String a, String b, String c, String d) {
  return a + b + c + d;
}
