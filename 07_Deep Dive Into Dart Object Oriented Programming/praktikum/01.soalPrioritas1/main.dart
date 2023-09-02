// Import kelas Kubus dan Balok yang diperlukan
import 'Kubus.dart';
import 'Balok.dart';

void main() {
  // Membuat objek Kubus dan Balok
  Kubus kubus = Kubus(5.0);
  Balok balok = Balok(3.0, 4.0, 5.0);

  // Menampilkan volume Kubus dan Balok
  print("Volume Kubus: ${kubus.volume()}");
  print("Volume Balok: ${balok.volume()}");
}
