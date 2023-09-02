import 'circle.dart'; // Import class Circle
import 'square.dart'; // Import class Square
import 'rectangle.dart'; // Import class Rectangle

void main() {
  // Membuat objek-objek berdasarkan class yang telah diimplementasikan
  Circle circle = Circle(5);
  Square square = Square(4);
  Rectangle rectangle = Rectangle(6, 8);

  // Menghitung dan menampilkan luas dan keliling masing-masing objek
  print('Luas dan Keliling Lingkaran:');
  print('Luas: ${circle.getArea()}');
  print('Keliling: ${circle.getPerimeter()}');
  print('');

  print('Luas dan Keliling Persegi:');
  print('Luas: ${square.getArea()}');
  print('Keliling: ${square.getPerimeter()}');
  print('');

  print('Luas dan Keliling Persegi Panjang:');
  print('Luas: ${rectangle.getArea()}');
  print('Keliling: ${rectangle.getPerimeter()}');
  print('');
}
