/*
Soal Prioritas 2
No 1
Buatlah sebuah piramid bintang
*/

import 'dart:io';

void main() {
  int rows = 8;
  for (int i = 0; i < rows; i++) {
    for (int j = (rows - i); j > 1; j--) {
      stdout.write("  ");
    }
    for (int j = 0; j <= i * 2; j++) {
      // Mengubah batas maksimum bintang
      stdout.write("* ");
    }
    stdout.writeln();
  }
}
