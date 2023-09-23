// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class galeriScreen extends StatefulWidget {
  const galeriScreen({Key? key}) : super(key: key);

  @override
  State<galeriScreen> createState() => _galeriScreenState();
}

class _galeriScreenState extends State<galeriScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Baru"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
