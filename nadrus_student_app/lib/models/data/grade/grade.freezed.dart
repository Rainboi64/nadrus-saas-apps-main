// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Grade _$GradeFromJson(Map<String, dynamic> json) {
  return _Grade.fromJson(json);
}

/// @nodoc
mixin _$Grade {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get nthGrade => throw _privateConstructorUsedError;
  dynamic get gradeId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GradeCopyWith<Grade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeCopyWith<$Res> {
  factory $GradeCopyWith(Grade value, $Res Function(Grade) then) =
      _$GradeCopyWithImpl<$Res, Grade>;
  @useResult
  $Res call(
      {dynamic id,
      dynamic nthGrade,
      dynamic gradeId,
      String? type,
      String? label});
}

/// @nodoc
class _$GradeCopyWithImpl<$Res, $Val extends Grade>
    implements $GradeCopyWith<$Res> {
  _$GradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nthGrade = freezed,
    Object? gradeId = freezed,
    Object? type = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nthGrade: freezed == nthGrade
          ? _value.nthGrade
          : nthGrade // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradeId: freezed == gradeId
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GradeCopyWith<$Res> implements $GradeCopyWith<$Res> {
  factory _$$_GradeCopyWith(_$_Grade value, $Res Function(_$_Grade) then) =
      __$$_GradeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic nthGrade,
      dynamic gradeId,
      String? type,
      String? label});
}

/// @nodoc
class __$$_GradeCopyWithImpl<$Res> extends _$GradeCopyWithImpl<$Res, _$_Grade>
    implements _$$_GradeCopyWith<$Res> {
  __$$_GradeCopyWithImpl(_$_Grade _value, $Res Function(_$_Grade) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nthGrade = freezed,
    Object? gradeId = freezed,
    Object? type = freezed,
    Object? label = freezed,
  }) {
    return _then(_$_Grade(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nthGrade: freezed == nthGrade
          ? _value.nthGrade
          : nthGrade // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gradeId: freezed == gradeId
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Grade implements _Grade {
  const _$_Grade({this.id, this.nthGrade, this.gradeId, this.type, this.label});

  factory _$_Grade.fromJson(Map<String, dynamic> json) =>
      _$$_GradeFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic nthGrade;
  @override
  final dynamic gradeId;
  @override
  final String? type;
  @override
  final String? label;

  @override
  String toString() {
    return 'Grade(id: $id, nthGrade: $nthGrade, gradeId: $gradeId, type: $type, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Grade &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nthGrade, nthGrade) &&
            const DeepCollectionEquality().equals(other.gradeId, gradeId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nthGrade),
      const DeepCollectionEquality().hash(gradeId),
      type,
      label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GradeCopyWith<_$_Grade> get copyWith =>
      __$$_GradeCopyWithImpl<_$_Grade>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GradeToJson(
      this,
    );
  }
}

abstract class _Grade implements Grade {
  const factory _Grade(
      {final dynamic id,
      final dynamic nthGrade,
      final dynamic gradeId,
      final String? type,
      final String? label}) = _$_Grade;

  factory _Grade.fromJson(Map<String, dynamic> json) = _$_Grade.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get nthGrade;
  @override
  dynamic get gradeId;
  @override
  String? get type;
  @override
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$$_GradeCopyWith<_$_Grade> get copyWith =>
      throw _privateConstructorUsedError;
}
