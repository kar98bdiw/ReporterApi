import 'dart:convert';
import 'dart:io';

import 'package:reporter_api/models/response/response.dart';
import '../models/exception/exception.dart' as exception;

abstract class BaseHandler {
  Future<void> call(HttpRequest request) async {
    response(
      request: request,
      response: await execute(request),
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
    required Response response,
  }) {
    if (response.exception != null) {
      request.response.statusCode = response.exception!.statusCode;
    }
    request.response.write(generateResponse(response));
    request.response.close();
  }

  Future<Response> get(HttpRequest request) async {
    return Response();
  }

  Future<Response> post(HttpRequest request) async {
    return Response();
  }

  String generateResponse(Response response) {
    Map<String, dynamic> responseData = {};
    if (response.data != null) {
      responseData['data'] = response.data;
    }
    if (response.exception != null) {
      responseData['exception'] = response.exception!.toJson();
    }
    return jsonEncode(responseData);
  }

  exception.Exception unknownMethodException() {
    return exception.Exception(message: 'Unknown message');
  }

  exception.Exception generateException(
    String message, {
    int statusCode = 500,
  }) {
    return exception.Exception(message: message, statusCode: statusCode);
  }
}
