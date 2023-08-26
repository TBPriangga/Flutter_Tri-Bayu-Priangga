void main() {
  // Data awal yang berisi elemen-elemen duplikat
  List<String> data1 = [
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litchfield',
    'amuse',
    'HKS'
  ];
  List<String> data2 = [
    'JS Racing',
    'amuse',
    'spoon',
    'spoon',
    'JS Racing',
    'amuse'
  ];

  // Menghapus elemen duplikat dari data menggunakan fungsi hapusDuplikat
  List<String> uniqueData1 = hapusDuplikat(data1);
  List<String> uniqueData2 = hapusDuplikat(data2);

  // Mencetak data asli dan data yang telah dihapus duplikatnya
  print('Sampel Input 1: $data1');
  print('Sampel Output 1: $uniqueData1');

  print('Sampel Input 2: $data2');
  print('Sampel Output 2: $uniqueData2');
}

// Fungsi untuk menghapus elemen duplikat dari daftar
List<String> hapusDuplikat(List<String> data) {
  // Membuat set yang hanya berisi elemen unik dari data
  Set<String> uniqueSet = Set<String>.from(data);
  // Mengubah set kembali menjadi daftar dan mengembalikannya
  return uniqueSet.toList();
}
