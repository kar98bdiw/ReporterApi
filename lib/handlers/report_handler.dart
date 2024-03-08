import 'dart:io';

import 'package:reporter_api/handlers/base_handler.dart';
import 'package:reporter_api/repositories/report_repository.dart';

class ReportHandler extends BaseHandler {
  final ReportRepository reportRepository;

  ReportHandler({
    required this.reportRepository,
  });

  @override
  Future<Object?> execute(HttpRequest request) async {
    return (await reportRepository.getAllReports())
        .map((e) => e.toJson())
        .toList();
  }
}
