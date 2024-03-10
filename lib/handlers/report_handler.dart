import 'dart:io';

import 'package:reporter_api/handlers/base_handler.dart';
import 'package:reporter_api/repositories/report_repository.dart';

import '../core/models/report/report.dart';
import '../core/models/response/response.dart';

class ReportHandler extends BaseHandler {
  final ReportRepository reportRepository;

  ReportHandler({
    required this.reportRepository,
  });

  @override
  Future<Response> get(HttpRequest request) async {
    return Response(
      exception: generateException('message'),
      data: Report(id: '', title: 'title', description: 'description').toJson(),
    );
  }

  @override
  Future<Response> post(HttpRequest request) async {
    return Response();
  }
}
