import 'dart:math';
//Soal Prioritas 2

void main() {
  print("No1");
  //Buat 3 buah variabel yang menampung tipe data String, lalu sambungkan 3 variabel tersebut dan tampilkan pada layar.
  String namaDepan = "Tri ";
  String namaTengah = "Bayu ";
  String namaBelakang = "Priangga";
  
  print(namaDepan + namaTengah + namaBelakang);
  
  print("----------------------------------------");
  print("No2");
  //Implementasikan rumus volume dari tabung (silinder) dengan menggunakan Bahasa Dart.
  double jariJari = 5;
  double tinggi = 10;
  
  double volumeTabung = pi * jariJari * jariJari * tinggi;
  print("Volume Tabung = $volumeTabung");
}
