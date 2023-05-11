// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _DataClass.fromJson(json);
}

/// @nodoc
mixin _$Task {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({int id, String title, DateTime dateTime, Duration duration});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? dateTime = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataClassCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_DataClassCopyWith(
          _$_DataClass value, $Res Function(_$_DataClass) then) =
      __$$_DataClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, DateTime dateTime, Duration duration});
}

/// @nodoc
class __$$_DataClassCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$_DataClass>
    implements _$$_DataClassCopyWith<$Res> {
  __$$_DataClassCopyWithImpl(
      _$_DataClass _value, $Res Function(_$_DataClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? dateTime = null,
    Object? duration = null,
  }) {
    return _then(_$_DataClass(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataClass implements _DataClass {
  const _$_DataClass(
      {required this.id,
      required this.title,
      required this.dateTime,
      required this.duration});

  factory _$_DataClass.fromJson(Map<String, dynamic> json) =>
      _$$_DataClassFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final DateTime dateTime;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'Task(id: $id, title: $title, dateTime: $dateTime, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataClass &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, dateTime, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataClassCopyWith<_$_DataClass> get copyWith =>
      __$$_DataClassCopyWithImpl<_$_DataClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataClassToJson(
      this,
    );
  }
}

abstract class _DataClass implements Task {
  const factory _DataClass(
      {required final int id,
      required final String title,
      required final DateTime dateTime,
      required final Duration duration}) = _$_DataClass;

  factory _DataClass.fromJson(Map<String, dynamic> json) =
      _$_DataClass.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  DateTime get dateTime;
  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_DataClassCopyWith<_$_DataClass> get copyWith =>
      throw _privateConstructorUsedError;
}
