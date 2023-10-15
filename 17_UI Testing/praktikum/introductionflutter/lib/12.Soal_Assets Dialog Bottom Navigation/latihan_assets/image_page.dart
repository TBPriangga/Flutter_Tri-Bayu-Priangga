// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class imagePage extends StatefulWidget {
  const imagePage({Key? key}) : super(key: key);

  @override
  State<imagePage> createState() => _imagePageState();
}

class _imagePageState extends State<imagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Assets"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/citylight.jpg'),
              ),
              const Text(
                "Beautiful City Light",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text(
                "Bukan Jakarta xD",
                style: GoogleFonts.poppins(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
