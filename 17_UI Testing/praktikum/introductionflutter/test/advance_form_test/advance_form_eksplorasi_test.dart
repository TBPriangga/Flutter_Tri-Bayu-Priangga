import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:introductionflutter/11.Soal_Form&Advance_Form_Input/advance_form_eksplorasi/advance_form_eksplorasi_page.dart';

void main() {
  group('Pengujian Halaman Advance Form Eksplor', () {
    testWidgets('Memeriksa apakah halaman memiliki judul yang benar',
        (WidgetTester tester) async {
      // Membangun aplikasi kita dan memicu frame.
      await tester
          .pumpWidget(const MaterialApp(home: advanceFormEksplorPage()));

      // Memeriksa apakah judul ditampilkan di halaman.
      expect(find.text("Contacts"), findsOneWidget);
    });

    testWidgets('Memeriksa apakah bagian "Buat Kontak Baru" ditampilkan',
        (WidgetTester tester) async {
      // Membangun aplikasi kita dan memicu frame.
      await tester
          .pumpWidget(const MaterialApp(home: advanceFormEksplorPage()));

      // Memeriksa apakah bagian "Buat Kontak Baru" ditampilkan.
      expect(find.text("Create New Contacts"), findsOneWidget);
      expect(find.text("Name"), findsOneWidget);
      expect(find.text("Nomor"), findsOneWidget);
      expect(find.text("Date"), findsOneWidget);
      expect(find.text("Color"), findsOneWidget);
      expect(find.text("Pick Files"), findsOneWidget);
    });
  });
}
