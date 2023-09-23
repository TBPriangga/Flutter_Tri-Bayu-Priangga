import 'package:flutter/material.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_dialogBottomSheet/models/task_model.dart';

class TaskManager extends ChangeNotifier {
  final _taskModels = <TaskModel>[];
  List<TaskModel> get taskModels => List.unmodifiable(_taskModels);

  void deleteTask(int index) {
    _taskModels.removeAt(index);
    notifyListeners();
  }

  void addTask(TaskModel task) {
    _taskModels.add(task);
    notifyListeners();
  }
}
