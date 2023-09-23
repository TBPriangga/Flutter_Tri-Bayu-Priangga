// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final String parameter;
  const AboutScreen({Key? key, required this.parameter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Screen"),
        centerTitle: true,
        actions: const [],
      ),
      body: Column(
        children: [Text(parameter)],
      ),
    );
  }
}
