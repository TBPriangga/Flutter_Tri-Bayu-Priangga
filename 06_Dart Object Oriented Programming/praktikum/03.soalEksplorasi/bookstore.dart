import 'book.dart'; // Mengimpor definisi class Book dari file 'book.dart'

class Bookstore {
  List<Book> books; // List untuk menyimpan daftar buku

  Bookstore()
      : books =
            []; // Constructor untuk menginisialisasi daftar buku awal sebagai list kosong

  void addBook(Book book) {
    // Method untuk menambahkan buku ke dalam daftar buku

    books.add(book); // Menambahkan buku ke dalam list buku
    print('Buku dengan ID ${book.id} ditambahkan.');
  }

  List<Book> getAllBooks() {
    // Method untuk mengambil seluruh daftar buku

    return books; // Mengembalikan seluruh daftar buku
  }

  void removeBook(String bookId) {
    // Method untuk menghapus buku dari daftar berdasarkan ID buku

    Book? bookToRemove;
    for (Book book in books) {
      if (book.id == bookId) {
        bookToRemove =
            book; // Menemukan buku yang sesuai dengan ID yang diberikan
        break;
      }
    }

    if (bookToRemove != null) {
      books.remove(bookToRemove); // Menghapus buku dari daftar
    }
  }
}
