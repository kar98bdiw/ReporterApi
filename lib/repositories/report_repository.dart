import 'package:reporter_api/models/report/report.dart';

class ReportRepository {
  Future<List<Report>> getAllReports() async {
    return [
      Report(
        id: 'test',
        title: 'title',
        description: 'description',
      ),
      Report(
        id: 'test2',
        title: 'title2',
        description: 'description2',
      ),
    ];
  }
}
