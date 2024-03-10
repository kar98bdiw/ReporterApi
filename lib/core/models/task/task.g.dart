// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      status: json['status'] == null
          ? TaskStatus.opened
          : const TaskStatusConverter().fromJson(json['status'] as int),
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': const TaskStatusConverter().toJson(instance.status),
      'title': instance.title,
      'description': instance.description,
    };
