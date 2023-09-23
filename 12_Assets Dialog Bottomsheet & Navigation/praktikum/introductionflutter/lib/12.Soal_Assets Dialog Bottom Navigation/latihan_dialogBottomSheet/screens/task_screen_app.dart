// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_dialogBottomSheet/models/task_manager.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_dialogBottomSheet/screens/task_screen_page.dart';
import 'package:provider/provider.dart';

class TaskScreenApp extends StatelessWidget {
  const TaskScreenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskManager(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreenPage(),
      ),
    );
  }
}
