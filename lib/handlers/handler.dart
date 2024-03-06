import 'dart:io';

import 'package:reporter_api/environment/environment.dart';
import 'package:reporter_api/handlers/base_handler.dart';
import 'package:reporter_api/handlers/report_handler.dart';

class Handler {
  final Environment environment;
  Handler({
    required this.environment,
  });

  BaseHandler reportHandler = ReportHandler();

  Future<void> on(HttpRequest request) async {
    switch (request.requestedUri.path) {
      case Environment.report:
        reportHandler.call(request);
        break;
      default:
        handleUnknownPath(request);
    }
  }

  void handleUnknownPath(HttpRequest request) {
    request.response.write('Unknown path');
    request.response.close();
  }
}