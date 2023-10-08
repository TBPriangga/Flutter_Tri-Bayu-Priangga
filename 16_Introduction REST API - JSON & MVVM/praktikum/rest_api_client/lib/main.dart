import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/homePage.dart';
import 'view_model/contact_view_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RestAPI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
