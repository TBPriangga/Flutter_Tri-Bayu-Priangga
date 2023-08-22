//Soal Eksplorasi
//Tugas Soal Eksplorasi no 1

// Fungsi untuk memeriksa apakah suatu angka adalah bilangan prima
bool primaCheck(int n) {
  if (n <= 1) {
    return false; // Angka kurang dari atau sama dengan 1 bukan bilangan prima
  }
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      return false; // Jika ada pembagi selain 1 dan n, maka bukan bilangan prima
    }
  }
  return true; // Jika tidak ada pembagi selain 1 dan n, maka adalah bilangan prima
}

void main() {
  List<int> numbers = [10, 17, 25, 37, 49];

  // Iterasi melalui daftar angka dan memeriksa apakah setiap angka adalah bilangan prima atau tidak
  for (int number in numbers) {
    if (primaCheck(number)) {
      print("Angka $number adalah bilangan prima");
    } else {
      print("Angka $number bukan bilangan prima");
    }
  }
}
