import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reporter_api/core/enum/task_status.dart';

class TaskStatusConverter extends JsonConverter<TaskStatus, int> {
  const TaskStatusConverter();

  @override
  TaskStatus fromJson(int json) {
    switch (json) {
      case 0:
        return TaskStatus.opened;
      case 1:
        return TaskStatus.sended;
      case 2:
        return TaskStatus.done;
      default:
        return TaskStatus.opened;
    }
  }

  @override
  int toJson(TaskStatus object) {
    switch (object) {
      case TaskStatus.opened:
        return 0;
      case TaskStatus.sended:
        return 1;
      case TaskStatus.done:
        return 2;
      default:
        return 0;
    }
  }
}
