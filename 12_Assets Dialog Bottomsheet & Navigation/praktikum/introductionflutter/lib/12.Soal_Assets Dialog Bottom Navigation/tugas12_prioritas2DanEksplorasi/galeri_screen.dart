// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class galeriScreen_prioritas2 extends StatefulWidget {
  const galeriScreen_prioritas2({Key? key}) : super(key: key);

  @override
  State<galeriScreen_prioritas2> createState() =>
      _galeriScreen_prioritas2State();
}

class _galeriScreen_prioritas2State extends State<galeriScreen_prioritas2> {
  @override
  Widget build(BuildContext context) {
    final parameter = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galeri View"),
        actions: const [],
      ),
      body: SafeArea(
        child: Center(
          child: Image.network(parameter),
        ),
      ),
    );
  }
}
