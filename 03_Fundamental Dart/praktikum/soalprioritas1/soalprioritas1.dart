import 'dart:math'; //

//Soal Prioritas 1
//Buatlah rumus keliling dan luas persegi dan persegi panjang dengan menggunakan bahasa pemrograman Dart

void main() {
  
  print("Soal Prioritas1");
  print("No 1.");
  //Persegi
  int sisi = 10;
  
  int kelilingPersegi = 4 * sisi;
  int luasPersegi = sisi * sisi;  
  
  print("Keliling Persegi = $kelilingPersegi");
  print("Luas Persegi = $luasPersegi");
  //PersegiPanjang
  int panjang = 15;
  int lebar = 5;
  
  int kelilingPersegiPanjang = 2 * (panjang + lebar);
  int luasPersegiPanjang = panjang * lebar;
  
  print("Keliling Persegi Panjang = $kelilingPersegiPanjang");
  print("Luas Persegi Panjang = $luasPersegiPanjang");
  
  print("---------------------------------------------");
  //Implementasikan rumus keliling dan luas dari Lingkaran dengan menggunakan Bahasa Dart
  print("No 2.");
  //Lingkaran
  double diameter = 5;
  
  double kelilingLingkaran = 2 * pi * diameter;
  double luasLingkaran = pi * diameter * diameter;
  
  print("Keliling Lingkaran = $kelilingLingkaran");
  print("Luas Lingkaran = $luasLingkaran");
}
