// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework_statuses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeworkStatuses _$HomeworkStatusesFromJson(Map<String, dynamic> json) {
  return _HomeworkStatuses.fromJson(json);
}

/// @nodoc
mixin _$HomeworkStatuses {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get homeworkId => throw _privateConstructorUsedError;
  dynamic get studentId => throw _privateConstructorUsedError;
  dynamic get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeworkStatusesCopyWith<HomeworkStatuses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkStatusesCopyWith<$Res> {
  factory $HomeworkStatusesCopyWith(
          HomeworkStatuses value, $Res Function(HomeworkStatuses) then) =
      _$HomeworkStatusesCopyWithImpl<$Res, HomeworkStatuses>;
  @useResult
  $Res call({dynamic id, dynamic homeworkId, dynamic studentId, dynamic done});
}

/// @nodoc
class _$HomeworkStatusesCopyWithImpl<$Res, $Val extends HomeworkStatuses>
    implements $HomeworkStatusesCopyWith<$Res> {
  _$HomeworkStatusesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? homeworkId = freezed,
    Object? studentId = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      homeworkId: freezed == homeworkId
          ? _value.homeworkId
          : homeworkId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeworkStatusesCopyWith<$Res>
    implements $HomeworkStatusesCopyWith<$Res> {
  factory _$$_HomeworkStatusesCopyWith(
          _$_HomeworkStatuses value, $Res Function(_$_HomeworkStatuses) then) =
      __$$_HomeworkStatusesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic id, dynamic homeworkId, dynamic studentId, dynamic done});
}

/// @nodoc
class __$$_HomeworkStatusesCopyWithImpl<$Res>
    extends _$HomeworkStatusesCopyWithImpl<$Res, _$_HomeworkStatuses>
    implements _$$_HomeworkStatusesCopyWith<$Res> {
  __$$_HomeworkStatusesCopyWithImpl(
      _$_HomeworkStatuses _value, $Res Function(_$_HomeworkStatuses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? homeworkId = freezed,
    Object? studentId = freezed,
    Object? done = freezed,
  }) {
    return _then(_$_HomeworkStatuses(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      homeworkId: freezed == homeworkId
          ? _value.homeworkId
          : homeworkId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeworkStatuses implements _HomeworkStatuses {
  const _$_HomeworkStatuses(
      {this.id, this.homeworkId, this.studentId, this.done});

  factory _$_HomeworkStatuses.fromJson(Map<String, dynamic> json) =>
      _$$_HomeworkStatusesFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic homeworkId;
  @override
  final dynamic studentId;
  @override
  final dynamic done;

  @override
  String toString() {
    return 'HomeworkStatuses(id: $id, homeworkId: $homeworkId, studentId: $studentId, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeworkStatuses &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.homeworkId, homeworkId) &&
            const DeepCollectionEquality().equals(other.studentId, studentId) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(homeworkId),
      const DeepCollectionEquality().hash(studentId),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeworkStatusesCopyWith<_$_HomeworkStatuses> get copyWith =>
      __$$_HomeworkStatusesCopyWithImpl<_$_HomeworkStatuses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeworkStatusesToJson(
      this,
    );
  }
}

abstract class _HomeworkStatuses implements HomeworkStatuses {
  const factory _HomeworkStatuses(
      {final dynamic id,
      final dynamic homeworkId,
      final dynamic studentId,
      final dynamic done}) = _$_HomeworkStatuses;

  factory _HomeworkStatuses.fromJson(Map<String, dynamic> json) =
      _$_HomeworkStatuses.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get homeworkId;
  @override
  dynamic get studentId;
  @override
  dynamic get done;
  @override
  @JsonKey(ignore: true)
  _$$_HomeworkStatusesCopyWith<_$_HomeworkStatuses> get copyWith =>
      throw _privateConstructorUsedError;
}
