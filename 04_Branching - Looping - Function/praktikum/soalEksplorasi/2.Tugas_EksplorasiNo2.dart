import 'dart:io';

void main() {
  // Memasukkan angka
  stdout.write("Masukkan angka: ");
  int input = int.parse(stdin.readLineSync()!);

  // Menampilkan judul tabel perkalian
  print("Tabel Perkalian untuk $input:");

  // Mencetak baris pemisah
  print(List.generate(9, (_) => "     ").join());

  // Mencetak isi tabel perkalian
  for (int i = 1; i <= 9; i++) {
    // Mencetak hasil perkalian dalam bentuk tabel
    print(List.generate(9, (j) => (i * (j + 1)).toString().padLeft(5)).join());
  }
}
