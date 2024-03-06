import 'dart:io';

import 'package:reporter_api/engine/service_locator.dart';
import 'package:reporter_api/handlers/handler.dart';

class ReporterApi {
  Future<void> run() async {
    final server = await createServer()
      ..listen(ServiceLocator().get<Handler>().on);

    print('Server started: ${server.address} port ${server.port}');
  }

  Future<HttpServer> createServer() async {
    final address = InternetAddress.loopbackIPv4;
    const port = 4041;
    return await HttpServer.bind(address, port);
  }
}
