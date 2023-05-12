// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataClass _$$_DataClassFromJson(Map<String, dynamic> json) => _$_DataClass(
      id: json['id'] as int,
      description: json['description'] as String?,
      title: json['title'] as String,
      status: $enumDecode(_$StatusEnumMap, json['status']),
      isActive: json['isActive'] as bool,
      dateTime: DateTime.parse(json['dateTime'] as String),
      duration: Duration(microseconds: json['duration'] as int),
      estimate: Duration(microseconds: json['estimate'] as int),
    );

Map<String, dynamic> _$$_DataClassToJson(_$_DataClass instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'title': instance.title,
      'status': _$StatusEnumMap[instance.status]!,
      'isActive': instance.isActive,
      'dateTime': instance.dateTime.toIso8601String(),
      'duration': instance.duration.inMicroseconds,
      'estimate': instance.estimate.inMicroseconds,
    };

const _$StatusEnumMap = {
  Status.pending: 'pending',
  Status.progress: 'progress',
  Status.completed: 'completed',
};
