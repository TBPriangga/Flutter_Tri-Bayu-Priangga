import 'package:dicebear/viewModels/svg_view_model.dart';
import 'package:dicebear/views/svg_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (_) => SvgViewModel(),
        child: const SvgScreen(),
      ),
    );
  }
}
