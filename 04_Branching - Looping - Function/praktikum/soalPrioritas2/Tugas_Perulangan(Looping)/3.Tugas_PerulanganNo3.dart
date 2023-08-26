/* 
Soal Prioritas 2
Tugas Perulangan No 3
Buatlah sebuah function yang dapat menampilkan faktorial dari nilai-nilai di bawah ini:
a. 10
b. 40
c. 50
*/

// Fungsi untuk menghitung faktorial dari suatu nilai
BigInt faktorial(int nilai) {
  if (nilai == 0 || nilai == 1) {
    return BigInt.one;
  } else {
    // Rekursif: Menghitung faktorial nilai dengan memanggil fungsi faktorial untuk nilai lebih kecil
    return BigInt.from(nilai) * faktorial(nilai - 1);
  }
}

void main() {
  // Daftar nilai yang akan dihitung faktorialnya
  List<int> nilai = [10, 40, 50];

  // Iterasi melalui daftar nilai dan mencetak hasil faktorial
  for (int n in nilai) {
    // Memanggil fungsi faktorial untuk setiap nilai dan mendapatkan hasilnya
    BigInt hasil = faktorial(n);
    // Mencetak hasil faktorial
    print("Faktorial dari $n adalah $hasil");
  }
}
