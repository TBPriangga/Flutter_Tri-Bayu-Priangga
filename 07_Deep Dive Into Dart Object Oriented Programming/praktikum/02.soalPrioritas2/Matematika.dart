// Matematika.dart

// Import kelas KelipatanPersekutuanTerkecil dan FaktorPersekutuanTerbesar
import 'KelipatanPersekutuanTerkecil.dart';
import 'FaktorPersekutuanTerbesar.dart';

// Deklarasi kelas Matematika dengan implementasi KelipatanPersekutuanTerkecil dan FaktorPersekutuanTerbesar
class Matematika
    implements KelipatanPersekutuanTerkecil, FaktorPersekutuanTerbesar {
  int x;
  int y;

  // Konstruktor kelas Matematika
  Matematika(this.x, this.y);

  // Metode hasil() untuk menghitung dan mengembalikan hasil KPK dan FPB
  String hasil() {
    final int kpt = kelipatanPersekutuanTerkecil();
    final int fpt = faktorPersekutuanTerbesar();

    return 'Kelipatan Persekutuan Terkecil: $kpt, Faktor Persekutuan Terbesar: $fpt';
  }

  // Override metode kelipatanPersekutuanTerkecil() dari KelipatanPersekutuanTerkecil
  @override
  int kelipatanPersekutuanTerkecil() {
    return (x * y) ~/ faktorPersekutuanTerbesar();
  }

  // Override metode faktorPersekutuanTerbesar() dari FaktorPersekutuanTerbesar
  @override
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
