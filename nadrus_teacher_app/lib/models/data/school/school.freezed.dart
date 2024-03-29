// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

School _$SchoolFromJson(Map<String, dynamic> json) {
  return _School.fromJson(json);
}

/// @nodoc
mixin _$School {
  String? get tenant => throw _privateConstructorUsedError;
  Grade? get grade => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Section> get sections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolCopyWith<School> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCopyWith<$Res> {
  factory $SchoolCopyWith(School value, $Res Function(School) then) =
      _$SchoolCopyWithImpl<$Res, School>;
  @useResult
  $Res call(
      {String? tenant,
      Grade? grade,
      String? type,
      @JsonKey(defaultValue: []) List<Section> sections});

  $GradeCopyWith<$Res>? get grade;
}

/// @nodoc
class _$SchoolCopyWithImpl<$Res, $Val extends School>
    implements $SchoolCopyWith<$Res> {
  _$SchoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tenant = freezed,
    Object? grade = freezed,
    Object? type = freezed,
    Object? sections = null,
  }) {
    return _then(_value.copyWith(
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as Grade?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GradeCopyWith<$Res>? get grade {
    if (_value.grade == null) {
      return null;
    }

    return $GradeCopyWith<$Res>(_value.grade!, (value) {
      return _then(_value.copyWith(grade: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SchoolCopyWith<$Res> implements $SchoolCopyWith<$Res> {
  factory _$$_SchoolCopyWith(_$_School value, $Res Function(_$_School) then) =
      __$$_SchoolCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? tenant,
      Grade? grade,
      String? type,
      @JsonKey(defaultValue: []) List<Section> sections});

  @override
  $GradeCopyWith<$Res>? get grade;
}

/// @nodoc
class __$$_SchoolCopyWithImpl<$Res>
    extends _$SchoolCopyWithImpl<$Res, _$_School>
    implements _$$_SchoolCopyWith<$Res> {
  __$$_SchoolCopyWithImpl(_$_School _value, $Res Function(_$_School) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tenant = freezed,
    Object? grade = freezed,
    Object? type = freezed,
    Object? sections = null,
  }) {
    return _then(_$_School(
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as Grade?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_School implements _School {
  const _$_School(
      {this.tenant,
      this.grade,
      this.type,
      @JsonKey(defaultValue: []) required final List<Section> sections})
      : _sections = sections;

  factory _$_School.fromJson(Map<String, dynamic> json) =>
      _$$_SchoolFromJson(json);

  @override
  final String? tenant;
  @override
  final Grade? grade;
  @override
  final String? type;
  final List<Section> _sections;
  @override
  @JsonKey(defaultValue: [])
  List<Section> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'School(tenant: $tenant, grade: $grade, type: $type, sections: $sections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_School &&
            (identical(other.tenant, tenant) || other.tenant == tenant) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tenant, grade, type,
      const DeepCollectionEquality().hash(_sections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SchoolCopyWith<_$_School> get copyWith =>
      __$$_SchoolCopyWithImpl<_$_School>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchoolToJson(
      this,
    );
  }
}

abstract class _School implements School {
  const factory _School(
          {final String? tenant,
          final Grade? grade,
          final String? type,
          @JsonKey(defaultValue: []) required final List<Section> sections}) =
      _$_School;

  factory _School.fromJson(Map<String, dynamic> json) = _$_School.fromJson;

  @override
  String? get tenant;
  @override
  Grade? get grade;
  @override
  String? get type;
  @override
  @JsonKey(defaultValue: [])
  List<Section> get sections;
  @override
  @JsonKey(ignore: true)
  _$$_SchoolCopyWith<_$_School> get copyWith =>
      throw _privateConstructorUsedError;
}
