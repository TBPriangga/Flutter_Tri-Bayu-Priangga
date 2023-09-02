import 'shape.dart'; // Import definisi interface Shape

// Definisikan class Circle yang mengimplementasikan interface Shape
class Circle implements Shape {
  int radius; // Properti untuk radius lingkaran

  // Constructor
  Circle(this.radius);

  // Implementasi method getArea untuk menghitung luas lingkaran
  @override
  int getArea() {
    return (3.14 * radius * radius).toInt();
  }

  // Implementasi method getPerimeter untuk menghitung keliling lingkaran
  @override
  int getPerimeter() {
    return (2 * 3.14 * radius).toInt();
  }
}
