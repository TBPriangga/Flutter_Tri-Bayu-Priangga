// Import kelas BangunRuang yang diperlukan
import 'BangunRuang.dart';

// Definisikan kelas Kubus yang mewarisi dari BangunRuang
class Kubus extends BangunRuang {
  final double sisi;

  // Konstruktor untuk inisialisasi sisi dan mewarisi properti BangunRuang
  Kubus(this.sisi) : super(sisi, sisi, sisi);

  // Override method volume untuk menghitung volume Kubus
  @override
  double volume() {
    return sisi * sisi * sisi;
  }
}
