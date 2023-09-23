// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:introductionflutter/10.Soal_Platform_WidgetAndLayout/eksplorasiMaterialDesign/materialDesign_app.dart';
import 'package:introductionflutter/11.Soal_Form&Advance_Form_Input/advance_form_eksplorasi/advance_form_eksplorasi_app.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/tugas12_prioritas2DanEksplorasi/galeri_page.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/tugas12_prioritas2DanEksplorasi/galeri_screen.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/tugas12_prioritas2DanEksplorasi/listApp_page.dart';

class galeriApp_prioritasEksplroasi2 extends StatelessWidget {
  const galeriApp_prioritasEksplroasi2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => const listAppPage(),
        '/material': (_) => const materialDesignApp(),
        '/contact': (_) => const advanceFormEksplorApp(),
        '/galeri': (_) => const galeriPage_prioritas2(),
        '/screen': (_) => const galeriScreen_prioritas2(),
      },
    );
  }
}
