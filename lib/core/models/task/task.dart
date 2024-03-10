import 'package:freezed_annotation/freezed_annotation.dart';

import '../../converters/task_status_converter.dart';
import '../../enum/task_status.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    @TaskStatusConverter() @Default(TaskStatus.opened) TaskStatus status,
    required String title,
    required String description,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}
