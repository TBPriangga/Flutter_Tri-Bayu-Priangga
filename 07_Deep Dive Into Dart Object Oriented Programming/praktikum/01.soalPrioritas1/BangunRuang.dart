// Definisikan kelas BangunRuang
class BangunRuang {
  final double panjang;
  final double lebar;
  final double tinggi;

  // Konstruktor untuk inisialisasi properti
  BangunRuang(this.panjang, this.lebar, this.tinggi);

  // Method untuk menghitung volume (default mengembalikan 0)
  double volume() {
    return 0;
  }
}
