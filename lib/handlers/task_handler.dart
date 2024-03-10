import 'dart:io';

import 'package:reporter_api/engine/service_locator.dart';
import 'package:reporter_api/handlers/base_handler.dart';
import 'package:reporter_api/repositories/task_repository.dart';

import '../core/models/response/response.dart';

class TaskHandler extends BaseHandler {
  final TaskRepository taskRepository = ServiceLocator().get<TaskRepository>();

  @override
  Future<Response> get(HttpRequest request) async {
    var tasks = await taskRepository.getTasks();
    return Response(data: tasks.map((e) => e.toJson()).toList());
  }
}
