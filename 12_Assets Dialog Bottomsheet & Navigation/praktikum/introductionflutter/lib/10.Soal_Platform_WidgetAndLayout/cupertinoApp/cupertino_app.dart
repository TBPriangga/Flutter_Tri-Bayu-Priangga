// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'cupertino_page.dart';

class cupertinoApp extends StatelessWidget {
  const cupertinoApp({Key? key}) : super(key: key);

  final _themeDark = const CupertinoThemeData.raw(
      Brightness.dark, null, null, null, null, null, null);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: _themeDark,
      home: const homePage(),
    );
  }
}
