import 'dart:io';

import 'package:reporter_api/handlers/base_handler.dart';
import 'package:reporter_api/models/response/response.dart';
import 'package:reporter_api/repositories/report_repository.dart';

class ReportHandler extends BaseHandler {
  final ReportRepository reportRepository;

  ReportHandler({
    required this.reportRepository,
  });

  @override
  Future<Response> get(HttpRequest request) async {
    return Response(
      data: 'Report',
    );
  }
}
