import '../core/models/task/task.dart';

class TaskRepository {
  Future<List<Task>> getTasks() async {
    var tasks = <Task>[];
    for (int i = 0; i <= 10; i++) {
      tasks.add(
        Task(
          id: '$i',
          title: 'Task title $i',
          description: 'Task description $i',
        ),
      );
    }
    return tasks;
  }
}
