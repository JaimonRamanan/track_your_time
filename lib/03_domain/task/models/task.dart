import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.g.dart';
part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required int id,
    required String title,
    required DateTime dateTime,
    required Duration duration,
  }) = _DataClass;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
