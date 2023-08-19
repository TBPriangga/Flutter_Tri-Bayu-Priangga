//SoalEksplorasi

bool isPalindrom(String word) {
  String reversedWord = word.split('').reversed.join();
  return word.toLowerCase() == reversedWord.toLowerCase();
}

void main() {
  print("No1");
  //Buatlah sebuah program untuk mengecek apakah sebuah kata merupakan sebuah palindrom atau bukan. 
  //Palindrom adalah sebuah kata yang jika dibalik dari kata aslinya memiliki cara baca atau susunan yang sama persis.
  String kata = "Malam"; // Ganti dengan kata yang ingin Anda verifikasi
  
  if (isPalindrom(kata)) {
    print("$kata adalah kata palindrom.");
  } else {
    print("$kata bukan kata palindrom.");
  }
  print("---------------------------------------------");
  print("No2");
  //Buatlah sebuah program untuk mencari faktor dari sebuah bilangan yang dimasukkan.
  int bilangan = 24; // Ganti dengan bilangan yang ingin Anda cari faktornya

  print("Faktor dari $bilangan adalah:");
  for (int i = 1; i <= bilangan; i++) {
    if (bilangan % i == 0) {
      print(i);
    }
  }
}

