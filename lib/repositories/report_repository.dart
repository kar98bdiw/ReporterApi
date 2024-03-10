import '../core/models/report/report.dart';

class ReportRepository {
  List<Report> reports = [];

  Future<void> addReport(Report report) async {
    reports.add(report);
  }
}
