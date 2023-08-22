//Soal Prioritas 2
//Nomor 2

import 'dart:io';

void main() {
  int rows = 6;

  // Bagian atas jam pasir
  for (int i = rows; i >= 1; i--) {
    for (int j = i; j < rows; j++) {
      stdout.write("  ");
    }
    for (int j = 1; j <= i * 2 - 1; j++) {
      stdout.write(" 0");
    }
    stdout.writeln();
  }

  // Bagian bawah jam pasir
  for (int i = 2; i <= rows; i++) {
    for (int j = i; j < rows; j++) {
      stdout.write("  ");
    }
    for (int j = 1; j <= i * 2 - 1; j++) {
      stdout.write(" 0");
    }
    stdout.writeln();
  }
}
