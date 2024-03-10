// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExceptionImpl _$$ExceptionImplFromJson(Map<String, dynamic> json) =>
    _$ExceptionImpl(
      message: json['message'] as String,
      statusCode: json['statusCode'] as int? ?? 500,
    );

Map<String, dynamic> _$$ExceptionImplToJson(_$ExceptionImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
    };
