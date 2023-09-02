// main.dart

// Import kelas Matematika
import 'Matematika.dart';

void main() {
  // Membuat objek Matematika dengan nilai x=12 dan y=18
  final Matematika operation = Matematika(12, 18);

  // Mencetak hasil perhitungan KPK dan FPB menggunakan metode hasil()
  print(operation.hasil());
}
