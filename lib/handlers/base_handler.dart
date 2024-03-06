import 'dart:io';

abstract class BaseHandler {
  Future<void> call(HttpRequest request) async {
    response(
      request: request,
      data: await execute(request),
    );
  }

  Future<Object?> execute(HttpRequest request);

  void response({
    required HttpRequest request,
    Object? data,
  }) {
    request.response.write(data);
    request.response.close();
  }
}
