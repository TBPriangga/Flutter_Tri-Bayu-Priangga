// Fungsi rekursif untuk menghitung faktorial dari suatu angka
Future<int> factorial(int n) async {
  // Basis dari rekursi: faktorial dari 0 adalah 1
  return n == 0 ? 1 : n * await factorial(n - 1);
}

// Fungsi utama yang berjalan secara asynchronous
void main() async {
  int angka = 5; // Angka yang akan dihitung faktorialnya

  print('Perhitungan faktorial dimulai'); // Pesan sebelum perhitungan dimulai
  int hasil =
      await factorial(angka); // Menghitung faktorial secara asynchronous
  print('Perhitungan faktorial selesai'); // Pesan setelah perhitungan selesai
  print(
      'Hasil faktorial dari $angka adalah $hasil'); // Menampilkan hasil faktorial
}
