// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataClass _$$_DataClassFromJson(Map<String, dynamic> json) => _$_DataClass(
      id: json['id'] as int,
      title: json['title'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      duration: Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$_DataClassToJson(_$_DataClass instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'dateTime': instance.dateTime.toIso8601String(),
      'duration': instance.duration.inMicroseconds,
    };
