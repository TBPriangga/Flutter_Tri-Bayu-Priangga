// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:introductionflutter/12.Soal_Assets/latihan_assets/image_page.dart';

class imageApp extends StatelessWidget {
  const imageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Rowdies'),
      home: imagePage(),
    );
  }
}
