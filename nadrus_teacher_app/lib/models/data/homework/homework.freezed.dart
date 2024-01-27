// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Homework _$HomeworkFromJson(Map<String, dynamic> json) {
  return _Homework.fromJson(json);
}

/// @nodoc
mixin _$Homework {
  int? get id => throw _privateConstructorUsedError;
  int? get classId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get deadlineDate => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  Class? get schoolClass => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeworkCopyWith<Homework> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkCopyWith<$Res> {
  factory $HomeworkCopyWith(Homework value, $Res Function(Homework) then) =
      _$HomeworkCopyWithImpl<$Res, Homework>;
  @useResult
  $Res call(
      {int? id,
      int? classId,
      String? content,
      String? name,
      String? deadlineDate,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "class") Class? schoolClass,
      bool selected});

  $ClassCopyWith<$Res>? get schoolClass;
}

/// @nodoc
class _$HomeworkCopyWithImpl<$Res, $Val extends Homework>
    implements $HomeworkCopyWith<$Res> {
  _$HomeworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? content = freezed,
    Object? name = freezed,
    Object? deadlineDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? schoolClass = freezed,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      deadlineDate: freezed == deadlineDate
          ? _value.deadlineDate
          : deadlineDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schoolClass: freezed == schoolClass
          ? _value.schoolClass
          : schoolClass // ignore: cast_nullable_to_non_nullable
              as Class?,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassCopyWith<$Res>? get schoolClass {
    if (_value.schoolClass == null) {
      return null;
    }

    return $ClassCopyWith<$Res>(_value.schoolClass!, (value) {
      return _then(_value.copyWith(schoolClass: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeworkCopyWith<$Res> implements $HomeworkCopyWith<$Res> {
  factory _$$_HomeworkCopyWith(
          _$_Homework value, $Res Function(_$_Homework) then) =
      __$$_HomeworkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? classId,
      String? content,
      String? name,
      String? deadlineDate,
      DateTime? createdAt,
      DateTime? updatedAt,
      @JsonKey(name: "class") Class? schoolClass,
      bool selected});

  @override
  $ClassCopyWith<$Res>? get schoolClass;
}

/// @nodoc
class __$$_HomeworkCopyWithImpl<$Res>
    extends _$HomeworkCopyWithImpl<$Res, _$_Homework>
    implements _$$_HomeworkCopyWith<$Res> {
  __$$_HomeworkCopyWithImpl(
      _$_Homework _value, $Res Function(_$_Homework) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? content = freezed,
    Object? name = freezed,
    Object? deadlineDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? schoolClass = freezed,
    Object? selected = null,
  }) {
    return _then(_$_Homework(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      deadlineDate: freezed == deadlineDate
          ? _value.deadlineDate
          : deadlineDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      schoolClass: freezed == schoolClass
          ? _value.schoolClass
          : schoolClass // ignore: cast_nullable_to_non_nullable
              as Class?,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Homework implements _Homework {
  const _$_Homework(
      {this.id,
      this.classId,
      this.content,
      this.name,
      this.deadlineDate,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: "class") this.schoolClass,
      this.selected = false});

  factory _$_Homework.fromJson(Map<String, dynamic> json) =>
      _$$_HomeworkFromJson(json);

  @override
  final int? id;
  @override
  final int? classId;
  @override
  final String? content;
  @override
  final String? name;
  @override
  final String? deadlineDate;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "class")
  final Class? schoolClass;
  @override
  @JsonKey()
  final bool selected;

  @override
  String toString() {
    return 'Homework(id: $id, classId: $classId, content: $content, name: $name, deadlineDate: $deadlineDate, createdAt: $createdAt, updatedAt: $updatedAt, schoolClass: $schoolClass, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Homework &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.deadlineDate, deadlineDate) ||
                other.deadlineDate == deadlineDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.schoolClass, schoolClass) ||
                other.schoolClass == schoolClass) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, classId, content, name,
      deadlineDate, createdAt, updatedAt, schoolClass, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeworkCopyWith<_$_Homework> get copyWith =>
      __$$_HomeworkCopyWithImpl<_$_Homework>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeworkToJson(
      this,
    );
  }
}

abstract class _Homework implements Homework {
  const factory _Homework(
      {final int? id,
      final int? classId,
      final String? content,
      final String? name,
      final String? deadlineDate,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      @JsonKey(name: "class") final Class? schoolClass,
      final bool selected}) = _$_Homework;

  factory _Homework.fromJson(Map<String, dynamic> json) = _$_Homework.fromJson;

  @override
  int? get id;
  @override
  int? get classId;
  @override
  String? get content;
  @override
  String? get name;
  @override
  String? get deadlineDate;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "class")
  Class? get schoolClass;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_HomeworkCopyWith<_$_Homework> get copyWith =>
      throw _privateConstructorUsedError;
}
