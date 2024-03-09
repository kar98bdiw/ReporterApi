import 'dart:io';

import 'package:reporter_api/models/response/response.dart';
import '../models/exception/exception.dart' as exception;

abstract class BaseHandler {
  Future<void> call(HttpRequest request) async {
    response(
      request: request,
      data: await execute(request),
    );
  }

  Future<Response> execute(HttpRequest request) async {
    late Response response;
    switch (request.method) {
      case 'GET':
        response = await get(request);
        break;
      case 'POST':
        response = await post(request);
      default:
        response = Response(exception: unknownMethodException());
    }
    return response;
  }

  void response({
    required HttpRequest request,
    Object? data,
  }) {
    request.response.write(data);
    request.response.close();
  }

  Future<Response> get(HttpRequest request) async {
    return Response();
  }

  Future<Response> post(HttpRequest request) async {
    return Response();
  }

  exception.Exception unknownMethodException() {
    return exception.Exception(message: 'Unknown message');
  }
}
