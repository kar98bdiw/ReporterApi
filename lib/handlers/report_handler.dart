import 'dart:io';

import 'package:reporter_api/handlers/base_handler.dart';

class ReportHandler extends BaseHandler {
  @override
  Future<Object?> execute(HttpRequest request) async {
    return 'report handler';
  }
}
