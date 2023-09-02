import 'shape.dart'; // Import definisi interface Shape

// Definisikan class Rectangle yang mengimplementasikan interface Shape
class Rectangle implements Shape {
  int width; // Properti untuk lebar persegi panjang
  int height; // Properti untuk tinggi persegi panjang

  // Constructor
  Rectangle(this.width, this.height);

  // Implementasi method getArea untuk menghitung luas persegi panjang
  @override
  int getArea() {
    return (width * height);
  }

  // Implementasi method getPerimeter untuk menghitung keliling persegi panjang
  @override
  int getPerimeter() {
    return (2 * (width + height));
  }
}
