// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';

int _selectedIndex = 0;

class homePage extends StatelessWidget {
  homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Color(0xFF424242),
        middle: Text("Cupertino App"),
      ),
      child: Center(
        child: Text("This is CupertinoApp"),
      ),
    );
  }
}

class DataContact {
  final String name;
  final String number;

  DataContact(this.name, this.number);
}
