import 'package:freezed_annotation/freezed_annotation.dart';
import '../exception/exception.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class Response with _$Response {
  const factory Response({
    Object? data,
    Exception? exception,
  }) = _Response;

  factory Response.fromJson(Map<String, Object?> json) =>
      _$ResponseFromJson(json);
}
