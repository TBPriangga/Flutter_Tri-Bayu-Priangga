class Calculator {
  // Class Calculator dengan empat method yang masing-masing melakukan operasi matematika

  double tambah(double a, double b) {
    return a + b;
  }

  double kurang(double a, double b) {
    return a - b;
  }

  double kali(double a, double b) {
    return a * b;
  }

  double bagi(double a, double b) {
    return a / b;
  }
}

void main() {
  Calculator calculator =
      Calculator(); // Membuat instance (objek) dari class Calculator

  // Menggunakan method-method dalam objek Calculator untuk melakukan operasi matematika

  double hasilTambah = calculator.tambah(5, 3);
  print('Hasil penjumlahan: $hasilTambah');

  double hasilKurang = calculator.kurang(10, 4);
  print('Hasil pengurangan: $hasilKurang');

  double hasilKali = calculator.kali(7, 2);
  print('Hasil perkalian: $hasilKali');

  double hasilBagi = calculator.bagi(15, 3);
  print('Hasil pembagian: $hasilBagi');
}
