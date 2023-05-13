import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.g.dart';
part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required int id,
    String? description,
    required String title,
    required Status status,
    required bool isActive,
    required DateTime dateTime,
    required Duration duration,
    required Duration estimate,
  }) = _DataClass;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

enum Status { pending, progress, completed }
