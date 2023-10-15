// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_navigation/navigaton_dasar/Navigation_screen.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const AboutScreen(
                  parameter: 'Contoh Data yang akan ikut di push',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
