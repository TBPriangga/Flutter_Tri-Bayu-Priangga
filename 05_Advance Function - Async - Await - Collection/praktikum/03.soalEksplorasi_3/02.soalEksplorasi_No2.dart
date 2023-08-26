void main() {
  // List yang berisi beberapa string dengan duplikasi
  List<String> data = [
    'js',
    'js',
    'js',
    'golang',
    'python',
    'js',
    'js',
    'golang',
    'rust'
  ];

  // Membuat map untuk menyimpan frekuensi kemunculan setiap string
  Map<String, int> frekuensiKemunculan = {};

  // Menghitung frekuensi kemunculan setiap string dalam list
  data.forEach((item) {
    // Jika string sudah ada dalam map, tambahkan 1 ke frekuensinya, jika belum, inisialisasi dengan 1
    frekuensiKemunculan[item] = (frekuensiKemunculan[item] ?? 0) + 1;
  });

  // Mencetak list input
  print('Sampel Input: $data');
  // Mencetak header untuk output
  print('Sampel Output:');

  // Mencetak setiap elemen dan frekuensinya dalam map
  frekuensiKemunculan.forEach((key, value) {
    print('$key: $value');
  });
}
