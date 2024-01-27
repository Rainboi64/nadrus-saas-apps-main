// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Class _$ClassFromJson(Map<String, dynamic> json) {
  return _Class.fromJson(json);
}

/// @nodoc
mixin _$Class {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get teacherId => throw _privateConstructorUsedError;
  dynamic get lessonId => throw _privateConstructorUsedError;
  dynamic get weeklyScheduleId => throw _privateConstructorUsedError;
  dynamic get completionRate => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  Lesson? get lesson => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassCopyWith<Class> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCopyWith<$Res> {
  factory $ClassCopyWith(Class value, $Res Function(Class) then) =
      _$ClassCopyWithImpl<$Res, Class>;
  @useResult
  $Res call(
      {dynamic id,
      dynamic teacherId,
      dynamic lessonId,
      dynamic weeklyScheduleId,
      dynamic completionRate,
      String? date,
      Lesson? lesson});

  $LessonCopyWith<$Res>? get lesson;
}

/// @nodoc
class _$ClassCopyWithImpl<$Res, $Val extends Class>
    implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? teacherId = freezed,
    Object? lessonId = freezed,
    Object? weeklyScheduleId = freezed,
    Object? completionRate = freezed,
    Object? date = freezed,
    Object? lesson = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      weeklyScheduleId: freezed == weeklyScheduleId
          ? _value.weeklyScheduleId
          : weeklyScheduleId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      completionRate: freezed == completionRate
          ? _value.completionRate
          : completionRate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      lesson: freezed == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonCopyWith<$Res>? get lesson {
    if (_value.lesson == null) {
      return null;
    }

    return $LessonCopyWith<$Res>(_value.lesson!, (value) {
      return _then(_value.copyWith(lesson: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClassCopyWith<$Res> implements $ClassCopyWith<$Res> {
  factory _$$_ClassCopyWith(_$_Class value, $Res Function(_$_Class) then) =
      __$$_ClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic teacherId,
      dynamic lessonId,
      dynamic weeklyScheduleId,
      dynamic completionRate,
      String? date,
      Lesson? lesson});

  @override
  $LessonCopyWith<$Res>? get lesson;
}

/// @nodoc
class __$$_ClassCopyWithImpl<$Res> extends _$ClassCopyWithImpl<$Res, _$_Class>
    implements _$$_ClassCopyWith<$Res> {
  __$$_ClassCopyWithImpl(_$_Class _value, $Res Function(_$_Class) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? teacherId = freezed,
    Object? lessonId = freezed,
    Object? weeklyScheduleId = freezed,
    Object? completionRate = freezed,
    Object? date = freezed,
    Object? lesson = freezed,
  }) {
    return _then(_$_Class(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      weeklyScheduleId: freezed == weeklyScheduleId
          ? _value.weeklyScheduleId
          : weeklyScheduleId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      completionRate: freezed == completionRate
          ? _value.completionRate
          : completionRate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      lesson: freezed == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Class implements _Class {
  const _$_Class(
      {this.id,
      this.teacherId,
      this.lessonId,
      this.weeklyScheduleId,
      this.completionRate,
      this.date,
      this.lesson});

  factory _$_Class.fromJson(Map<String, dynamic> json) =>
      _$$_ClassFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic teacherId;
  @override
  final dynamic lessonId;
  @override
  final dynamic weeklyScheduleId;
  @override
  final dynamic completionRate;
  @override
  final String? date;
  @override
  final Lesson? lesson;

  @override
  String toString() {
    return 'Class(id: $id, teacherId: $teacherId, lessonId: $lessonId, weeklyScheduleId: $weeklyScheduleId, completionRate: $completionRate, date: $date, lesson: $lesson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Class &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.teacherId, teacherId) &&
            const DeepCollectionEquality().equals(other.lessonId, lessonId) &&
            const DeepCollectionEquality()
                .equals(other.weeklyScheduleId, weeklyScheduleId) &&
            const DeepCollectionEquality()
                .equals(other.completionRate, completionRate) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.lesson, lesson) || other.lesson == lesson));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(teacherId),
      const DeepCollectionEquality().hash(lessonId),
      const DeepCollectionEquality().hash(weeklyScheduleId),
      const DeepCollectionEquality().hash(completionRate),
      date,
      lesson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      __$$_ClassCopyWithImpl<_$_Class>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassToJson(
      this,
    );
  }
}

abstract class _Class implements Class {
  const factory _Class(
      {final dynamic id,
      final dynamic teacherId,
      final dynamic lessonId,
      final dynamic weeklyScheduleId,
      final dynamic completionRate,
      final String? date,
      final Lesson? lesson}) = _$_Class;

  factory _Class.fromJson(Map<String, dynamic> json) = _$_Class.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get teacherId;
  @override
  dynamic get lessonId;
  @override
  dynamic get weeklyScheduleId;
  @override
  dynamic get completionRate;
  @override
  String? get date;
  @override
  Lesson? get lesson;
  @override
  @JsonKey(ignore: true)
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      throw _privateConstructorUsedError;
}
