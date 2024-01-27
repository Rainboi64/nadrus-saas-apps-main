// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return _Subject.fromJson(json);
}

/// @nodoc
mixin _$Subject {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get iconName => throw _privateConstructorUsedError;
  String? get pngIcon => throw _privateConstructorUsedError;
  String? get svgIcon => throw _privateConstructorUsedError;
  int? get gradeId => throw _privateConstructorUsedError;
  int? get teacherId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectCopyWith<Subject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res, Subject>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? iconName,
      String? pngIcon,
      String? svgIcon,
      int? gradeId,
      int? teacherId});
}

/// @nodoc
class _$SubjectCopyWithImpl<$Res, $Val extends Subject>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iconName = freezed,
    Object? pngIcon = freezed,
    Object? svgIcon = freezed,
    Object? gradeId = freezed,
    Object? teacherId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
      pngIcon: freezed == pngIcon
          ? _value.pngIcon
          : pngIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      svgIcon: freezed == svgIcon
          ? _value.svgIcon
          : svgIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      gradeId: freezed == gradeId
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubjectCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$$_SubjectCopyWith(
          _$_Subject value, $Res Function(_$_Subject) then) =
      __$$_SubjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? iconName,
      String? pngIcon,
      String? svgIcon,
      int? gradeId,
      int? teacherId});
}

/// @nodoc
class __$$_SubjectCopyWithImpl<$Res>
    extends _$SubjectCopyWithImpl<$Res, _$_Subject>
    implements _$$_SubjectCopyWith<$Res> {
  __$$_SubjectCopyWithImpl(_$_Subject _value, $Res Function(_$_Subject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iconName = freezed,
    Object? pngIcon = freezed,
    Object? svgIcon = freezed,
    Object? gradeId = freezed,
    Object? teacherId = freezed,
  }) {
    return _then(_$_Subject(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
      pngIcon: freezed == pngIcon
          ? _value.pngIcon
          : pngIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      svgIcon: freezed == svgIcon
          ? _value.svgIcon
          : svgIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      gradeId: freezed == gradeId
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subject implements _Subject {
  const _$_Subject(
      {this.id,
      this.name,
      this.iconName,
      this.pngIcon,
      this.svgIcon,
      this.gradeId,
      this.teacherId});

  factory _$_Subject.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? iconName;
  @override
  final String? pngIcon;
  @override
  final String? svgIcon;
  @override
  final int? gradeId;
  @override
  final int? teacherId;

  @override
  String toString() {
    return 'Subject(id: $id, name: $name, iconName: $iconName, pngIcon: $pngIcon, svgIcon: $svgIcon, gradeId: $gradeId, teacherId: $teacherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subject &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
            (identical(other.pngIcon, pngIcon) || other.pngIcon == pngIcon) &&
            (identical(other.svgIcon, svgIcon) || other.svgIcon == svgIcon) &&
            (identical(other.gradeId, gradeId) || other.gradeId == gradeId) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, iconName, pngIcon, svgIcon, gradeId, teacherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubjectCopyWith<_$_Subject> get copyWith =>
      __$$_SubjectCopyWithImpl<_$_Subject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectToJson(
      this,
    );
  }
}

abstract class _Subject implements Subject {
  const factory _Subject(
      {final int? id,
      final String? name,
      final String? iconName,
      final String? pngIcon,
      final String? svgIcon,
      final int? gradeId,
      final int? teacherId}) = _$_Subject;

  factory _Subject.fromJson(Map<String, dynamic> json) = _$_Subject.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get iconName;
  @override
  String? get pngIcon;
  @override
  String? get svgIcon;
  @override
  int? get gradeId;
  @override
  int? get teacherId;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectCopyWith<_$_Subject> get copyWith =>
      throw _privateConstructorUsedError;
}
