// KelipatanPersekutuanTerkecil.dart

// Deklarasi kelas KelipatanPersekutuanTerkecil
class KelipatanPersekutuanTerkecil {
  int x;
  int y;

  // Konstruktor kelas KelipatanPersekutuanTerkecil
  KelipatanPersekutuanTerkecil(this.x, this.y);

  // Metode untuk menghitung kelipatan persekutuan terkecil (KPK)
  int kelipatanPersekutuanTerkecil() {
    return (x * y) ~/ faktorPersekutuanTerbesar();
  }

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
