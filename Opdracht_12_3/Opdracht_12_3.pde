class Spaarpot {
  float saldo;
  
  Spaarpot(float startSaldo) {
     if (startSaldo < 0) {
      this.saldo = 0;
    } else {
      this.saldo = startSaldo;
    }
  }

  void storten(float bedrag) {
    if (bedrag > 0) {
      saldo += bedrag;
      println("€" + bedrag + " gestort. Nieuw saldo: €" + saldo);
    } else {
      println("Het te storten bedrag moet groter zijn dan 0.");
    }
  }

  void opnemen(float bedrag) {
    if (bedrag <= 0) {
      println("Het op te nemen bedrag moet groter zijn dan 0.");
    } else if (bedrag > saldo) {
      println("Onvoldoende saldo (€" + saldo + "). Je kunt niet meer opnemen dan erin zit!");
    } else {
      saldo -= bedrag;
      println("€" + bedrag + " opgenomen. Resterend saldo: €" + saldo);
    }
  }
}
