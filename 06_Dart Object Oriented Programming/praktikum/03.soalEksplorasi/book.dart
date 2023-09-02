class Book {
  String id; // Atribut untuk menyimpan ID buku
  String judul; // Atribut untuk menyimpan judul buku
  String penerbit; // Atribut untuk menyimpan nama penerbit buku
  int harga; // Atribut untuk menyimpan harga buku
  String kategori; // Atribut untuk menyimpan kategori buku

  Book(this.id, this.judul, this.penerbit, this.harga,
      this.kategori); // Constructor untuk menginisialisasi atribut-atribut buku

  @override
  String toString() {
    // Method override toString() untuk menghasilkan representasi string dari objek buku
    return 'ID: $id | Judul: $judul | Penerbit: $penerbit | Harga: $harga | Kategori: $kategori';
  }
}
