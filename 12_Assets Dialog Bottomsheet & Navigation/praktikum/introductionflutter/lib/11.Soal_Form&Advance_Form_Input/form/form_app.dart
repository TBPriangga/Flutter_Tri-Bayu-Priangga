// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:introductionflutter/11.Soal_Form&Advance_Form_Input/form/form_page.dart';

class formApp extends StatelessWidget {
  const formApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const formPage(),
    );
  }
}
