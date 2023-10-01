import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_provider/home_page.dart';
import 'package:tugas_provider/stores/contact.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContactProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: home_page(),
    );
  }
}
