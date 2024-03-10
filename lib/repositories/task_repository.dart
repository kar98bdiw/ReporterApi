import 'package:reporter_api/core/enum/task_status.dart';

import '../core/models/task/task.dart';

class TaskRepository {
  List<Task> tasks = [];

  Future<void> fillTasks() async {
    var tasksList = <Task>[];
    for (int i = 0; i <= 10; i++) {
      tasksList.add(
        Task(
          id: '$i',
          title: 'Task title $i',
          description: 'Task description $i',
        ),
      );
    }
    tasks = tasksList.toList();
  }

  Future<List<Task>> getTasks() async {
    return tasks.toList();
  }

  Future<void> updateTask({
    required String taskId,
    required TaskStatus newStatus,
  }) async {
    var taskIndex = tasks.indexWhere((element) => element.id == taskId);
    tasks[taskIndex] = tasks[taskIndex].copyWith(status: newStatus);
  }
}
