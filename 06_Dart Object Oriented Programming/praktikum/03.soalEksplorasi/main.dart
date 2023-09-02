import 'book.dart';
import 'bookstore.dart';

void main() {
  Bookstore bookstore = Bookstore();

  // Menambahkan data buku
  bookstore.addBook(Book('B001', 'Hujan', 'Gramedia', 100000, 'Fiksi'));
  bookstore
      .addBook(Book('B002', 'Sherlock Holmes', 'Erlangga', 75000, 'Detektif'));
  bookstore.addBook(
      Book('B003', 'To Kill a Mockingbird', 'BukuKita', 90000, 'Klasik'));

  // Mendapatkan semua data buku
  List<Book> allBooks = bookstore.getAllBooks();
  print('Daftar Buku:');
  for (Book book in allBooks) {
    print(book.toString());
  }

  // Menghapus data buku
  bookstore.removeBook('B002');
  print('Buku dengan ID B002 dihapus.');

  // Mendapatkan semua data buku setelah penghapusan
  allBooks = bookstore.getAllBooks();
  print('Daftar Buku setelah penghapusan:');
  for (Book book in allBooks) {
    print(book.toString());
  }
}
