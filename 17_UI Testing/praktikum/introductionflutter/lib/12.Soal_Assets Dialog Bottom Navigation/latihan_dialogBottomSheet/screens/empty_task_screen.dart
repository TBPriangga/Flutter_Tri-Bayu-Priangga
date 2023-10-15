// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class EmptyTaskScreen extends StatefulWidget {
  const EmptyTaskScreen({Key? key}) : super(key: key);

  @override
  State<EmptyTaskScreen> createState() => _EmptyTaskScreenState();
}

class _EmptyTaskScreenState extends State<EmptyTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.amber);
  }
}
