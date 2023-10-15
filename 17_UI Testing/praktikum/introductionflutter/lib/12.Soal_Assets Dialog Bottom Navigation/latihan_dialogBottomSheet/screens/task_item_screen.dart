// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_dialogBottomSheet/models/db_manager.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_dialogBottomSheet/models/task_model.dart';
import 'package:provider/provider.dart';

class TaskItemScreen extends StatefulWidget {
  final TaskModel? taskModel;
  const TaskItemScreen({
    Key? key,
    this.taskModel,
  }) : super(key: key);

  @override
  State<TaskItemScreen> createState() => _TaskItemScreenState();
}

class _TaskItemScreenState extends State<TaskItemScreen> {
  final _taskNameController = TextEditingController();
  // ignore: unused_field
  bool _isUpdate = false;

  @override
  void initState() {
    super.initState();
    if (widget.taskModel != null) {
      _taskNameController.text = widget.taskModel!.taskName;
      _isUpdate = true;
    }
  }

  @override
  void dispose() {
    _taskNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            //buildTaskNameField
            buildNamedField(),
            const SizedBox(
              height: 20.0,
            ),
            //buildButton
            buildButton(),
          ],
        ),
      ),
    );
  }

  Widget buildNamedField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Task title",
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextField(
          controller: _taskNameController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            hintText: 'F.g. study',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
          ),
        ),
      ],
    );
  }

  Widget buildButton() {
    return ElevatedButton(
      child: const Text('Create Task'),
      onPressed: () {
        if (!_isUpdate) {
          final task = TaskModel(taskName: _taskNameController.text);
          Provider.of<DbManager>(context, listen: false).addTask(task);
        } else {
          final task = TaskModel(
            id: widget.taskModel!.id,
            taskName: _taskNameController.text,
          );
          Provider.of<DbManager>(context, listen: false).updateTask(task);
        }
        Navigator.pop(context);
      },
    );
  }
}
