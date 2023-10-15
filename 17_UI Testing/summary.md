# UI Testing
1. Pengertian UI Testing
- Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan bahwa aplikasi dapat menerima interaksi dan memberi respon kepada penggun
- UI Testing pada Flutter disebut dengan widget testing sehingga pengujiannya dilakukan pada widget dengan menuliskan script yang dijalankan secara otomatis
2. Keuntungan dari UI Testing
- Memastikan widget memberi tampilan yang sesuai
- Memastikan seluruh interaksi dapat diterima dengan baik
- Menjadi ketentuan yang harus diikuti saat diperlukan perbuahan pada widget
3. Untuk melakukan UI Testing
- Menginstall package flutter_test
- pada folder test, nama file harus diikut dengan _test.dart, contoh contact_test.dart
- pada setiap filenya berisi fungsi main() yang didalamnya dapat dituliskan script testing
- pada setiap skenario testingnya disebut dengan test case
- Test case diawali dengan TestWidgets dan diberi judul
- untuk menjalankan testing dapat memberikan perintah flutter test