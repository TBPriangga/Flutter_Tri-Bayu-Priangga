//Soal Prioritas 2
//Tugas Function No 1

import 'dart:math';

double luasLingkaran(double jariJari) {
  return pi * jariJari * jariJari;
}

void main() {
  double jariJari = 5;
  double hasil = luasLingkaran(jariJari);
  print("Hasil luas lingkarannya adalah = $hasil");
}
