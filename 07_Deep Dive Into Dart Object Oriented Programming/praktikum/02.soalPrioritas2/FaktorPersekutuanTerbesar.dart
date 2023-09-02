// FaktorPersekutuanTerbesar.dart

// Deklarasi kelas FaktorPersekutuanTerbesar
class FaktorPersekutuanTerbesar {
  int x;
  int y;

  // Konstruktor kelas FaktorPersekutuanTerbesar
  FaktorPersekutuanTerbesar(this.x, this.y);

  // Metode untuk menghitung faktor persekutuan terbesar (FPB)
  int faktorPersekutuanTerbesar() {
    int a = x;
    int b = y;

    while (b != 0) {
      final int t = b;
      b = a % b;
      a = t;
    }

    return a;
  }
}
