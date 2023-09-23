// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AboutRouteScreen extends StatelessWidget {
  const AboutRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parameter = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text("About Screen"),
        centerTitle: true,
        actions: const [],
      ),
      body: Column(
        children: [
          Text(parameter),
        ],
      ),
    );
  }
}
