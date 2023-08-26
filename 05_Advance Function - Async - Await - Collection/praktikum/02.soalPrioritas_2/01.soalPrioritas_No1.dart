void main() {
  // List yang berisi daftar nama dalam bentuk sublist
  List<List<String>> nama = [
    ['Tri', 'Bayu'],
    ['Greesella', 'Adhalia'],
    ['Michelle', 'Alexandra']
  ];

  // Map yang akan digunakan untuk menyimpan data nama dalam bentuk key-value
  Map<int, List<String>> namaMap = {};

  // Mengisi map dengan data dari list nama
  for (int i = 0; i < nama.length; i++) {
    namaMap[i] =
        nama[i]; // Setiap sublist dari list nama ditambahkan ke dalam map
  }

  // Menampilkan map yang berisi data nama
  print(namaMap);
}
