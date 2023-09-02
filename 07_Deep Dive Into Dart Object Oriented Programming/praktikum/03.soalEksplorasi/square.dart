import 'shape.dart'; // Import definisi interface Shape

// Definisikan class Square yang mengimplementasikan interface Shape
class Square implements Shape {
  int side; // Properti untuk panjang sisi persegi

  // Constructor
  Square(this.side);

  // Implementasi method getArea untuk menghitung luas persegi
  @override
  int getArea() {
    return (side * side);
  }

  // Implementasi method getPerimeter untuk menghitung keliling persegi
  @override
  int getPerimeter() {
    return (4 * side);
  }
}
