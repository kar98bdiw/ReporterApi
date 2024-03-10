import 'dart:io';

import 'package:reporter_api/core/enum/task_status.dart';
import 'package:reporter_api/engine/service_locator.dart';
import 'package:reporter_api/handlers/base_handler.dart';
import 'package:reporter_api/repositories/report_repository.dart';
import 'package:reporter_api/repositories/task_repository.dart';

import '../core/models/report/report.dart';
import '../core/models/response/response.dart';

class ReportHandler extends BaseHandler {
  final ReportRepository reportRepository =
      ServiceLocator().get<ReportRepository>();

  @override
  Future<Response> get(HttpRequest request) async {
    return Response(
      data: reportRepository.reports.map((e) => e.toJson()).toList(),
    );
  }

  @override
  Future<Response> post(HttpRequest request) async {
    var data = await getRequestData(request);
    var taskId = data['taskId'];
    var report = Report(
      id: taskId,
      taskId: taskId,
      title: 'Report Title For $taskId',
      description: 'Report Description For $taskId',
    );
    reportRepository.addReport(report);
    ServiceLocator()
        .get<TaskRepository>()
        .updateTask(taskId: taskId, newStatus: TaskStatus.sended);
    return Response();
  }
}
