class Mobil {
  double kapasitas; // Atribut untuk menyimpan kapasitas mobil
  List<String> muatan; // List untuk menyimpan muatan di mobil

  Mobil(this.kapasitas)
      : muatan =
            []; // Constructor untuk menginisialisasi objek dengan kapasitas dan muatan kosong

  void tambahMuatan(String hewan) {
    if (kapasitas - muatan.length >= 1) {
      muatan.add(hewan);
      print('$hewan ditambahkan ke muatan.');
    } else {
      print('Kapasitas penuh, tidak dapat menambahkan $hewan.');
    }
  }

  void totalMuatan() {
    print('Total muatan: ${muatan.length}');
  }
}

void main() {
  Mobil mobil = Mobil(5.0); // Membuat objek 'mobil' dengan kapasitas 5.0
  mobil.tambahMuatan('Kucing'); // Menambahkan "Kucing" ke muatan mobil
  mobil.tambahMuatan('Anjing'); // Menambahkan "Anjing" ke muatan mobil
  mobil.tambahMuatan('Kambing'); // Menambahkan "Kambing" ke muatan mobil
  mobil.totalMuatan(); // Menampilkan total muatan dalam mobil
}
