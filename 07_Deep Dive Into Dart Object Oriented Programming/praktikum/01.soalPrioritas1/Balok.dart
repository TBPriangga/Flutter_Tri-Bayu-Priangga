// Import kelas BangunRuang yang diperlukan
import 'BangunRuang.dart';

// Definisikan kelas Balok yang mewarisi dari BangunRuang
class Balok extends BangunRuang {
  Balok(double panjang, double lebar, double tinggi)
      : super(panjang, lebar, tinggi);

  // Override method volume untuk menghitung volume Balok
  @override
  double volume() {
    return panjang * lebar * tinggi;
  }
}
