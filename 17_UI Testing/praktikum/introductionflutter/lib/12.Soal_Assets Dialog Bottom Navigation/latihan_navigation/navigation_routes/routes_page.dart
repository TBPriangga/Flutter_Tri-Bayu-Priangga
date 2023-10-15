// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class RoutesPage extends StatelessWidget {
  const RoutesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
        actions: const [],
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go To About Page"),
          onPressed: () {
            //Saat tombol ditekan maka akan dialihkan ke halaman About
            Navigator.of(context).pushNamed(
              '/about',
              arguments: 'Data dari home Screen',
            );
          },
        ),
      ),
    );
  }
}
