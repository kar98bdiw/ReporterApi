import 'dart:io';

class ReporterApi {
  Future<void> run() async {
    final server = await createServer()
      ..listen(requestHandler);

    print('Server started: ${server.address} port ${server.port}');
  }

  Future<HttpServer> createServer() async {
    final address = InternetAddress.loopbackIPv4;
    const port = 4040;
    return await HttpServer.bind(address, port);
  }

  void requestHandler(HttpRequest request) {
    request.response.write('object');
    request.response.close();
  }
}
