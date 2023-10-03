import 'package:flutter/material.dart';
import 'package:tugas_storage/form_page.dart';
import 'package:tugas_storage/login_screen.dart';

void main() {
  runApp(const formApp());
}

class formApp extends StatelessWidget {
  const formApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      routes: {
        '/': (context) => const LoginScreen(),
        '/formPage': (context) => const formPage(),
      },
    );
  }
}
