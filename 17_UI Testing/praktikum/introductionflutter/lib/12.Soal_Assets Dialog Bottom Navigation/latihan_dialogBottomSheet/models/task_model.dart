class TaskModel {
  late int? id; //Diganti late - Storage
  late String taskName;

  TaskModel({
    this.id,
    required this.taskName,
  });

  Map<String, dynamic> toMap() {
    // Menambahkan ToMap - Storage
    return {
      'id': id,
      'taskName': taskName,
    };
  }

  TaskModel.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    taskName = map['taskName'];
  }
}
