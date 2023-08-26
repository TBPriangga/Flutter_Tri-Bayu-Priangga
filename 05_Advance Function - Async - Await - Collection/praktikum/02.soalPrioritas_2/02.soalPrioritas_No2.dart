void main() {
  List<double> nilai = [
    78.5,
    82.0,
    90.5,
    86.75,
    91.25
  ]; // List berisi nilai-nilai ujian

  // Menghitung rata-rata dari nilai-nilai dalam list
  double rataRata = nilai.reduce((a, b) => a + b) / nilai.length;

  // Membulatkan rata-rata ke atas ke bilangan integer
  int rataRataBulat = rataRata.ceil();

  // Menampilkan nilai-nilai dan informasi rata-rata
  print('Nilai: $nilai'); // Menampilkan daftar nilai
  print('Rata-rata: $rataRata'); // Menampilkan rata-rata nilai
  print(
      'Rata-rata (pembulatan ke atas): $rataRataBulat'); // Menampilkan rata-rata yang dibulatkan ke atas
}
