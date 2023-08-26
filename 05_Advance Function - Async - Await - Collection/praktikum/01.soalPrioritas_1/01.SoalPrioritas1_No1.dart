// Fungsi untuk mengalikan setiap elemen dalam list dengan pengali secara asynchronous
Future<List<int>> pengaliList(List<int> list, int pengali) async {
  List<int> dataPengaliList = [];

  // Loop melalui setiap elemen dalam list
  for (int angka in list) {
    await Future.delayed(Duration(
        seconds: 1)); // Menunda selama 1 detik (simulasi operasi asynchronous)
    dataPengaliList
        .add(angka * pengali); // Mengalikan dan menambahkan hasil ke dalam list
  }

  return dataPengaliList; // Mengembalikan list hasil perkalian
}

void main() async {
  List<int> data = [1, 2, 3, 4, 5];
  int pengali = 2;

  List<int> result = await pengaliList(data, pengali); // Memanggil fungsi async
  print(result); // Menampilkan hasil list yang sudah dikalikan
}
