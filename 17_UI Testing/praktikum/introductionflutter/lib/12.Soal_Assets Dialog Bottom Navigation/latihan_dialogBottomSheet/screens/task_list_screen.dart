// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_dialogBottomSheet/components/task_item_card.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_dialogBottomSheet/models/db_manager.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_dialogBottomSheet/screens/task_item_screen.dart';
import 'package:provider/provider.dart';

class TaskListScreen extends StatelessWidget {
  final DbManager manager;
  const TaskListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Consumer<DbManager>(
        builder: (context, value, child) {
          final taskItems = manager.taskModels;

          return ListView.separated(
            itemCount: taskItems.length,
            itemBuilder: (context, index) {
              final item = taskItems[index];
              return InkWell(
                onTap: () async {
                  final selectedTask = await manager.getTaskById(item.id!);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TaskItemScreen(
                        taskModel: selectedTask,
                      ),
                    ),
                  );
                },
                child: TaskItemCard(
                  task: item,
                  onPressed: () {
                    manager.deleteTask(item.id!);
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${item.taskName} Deleted')));
                  },
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 16,
              );
            },
          );
        },
      ),
    );
  }
}
