import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';
part 'exception.g.dart';

@freezed
class Exception with _$Exception {
  const factory Exception({
    required String message,
  }) = _Exception;

  factory Exception.fromJson(Map<String, Object?> json) =>
      _$ExceptionFromJson(json);
}
