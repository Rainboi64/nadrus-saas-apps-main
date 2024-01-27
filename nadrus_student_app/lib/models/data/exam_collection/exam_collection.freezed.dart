// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExamCollection _$ExamCollectionFromJson(Map<String, dynamic> json) {
  return _ExamCollection.fromJson(json);
}

/// @nodoc
mixin _$ExamCollection {
  dynamic get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  dynamic get isActive => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic get selectableByTeachers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamCollectionCopyWith<ExamCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamCollectionCopyWith<$Res> {
  factory $ExamCollectionCopyWith(
          ExamCollection value, $Res Function(ExamCollection) then) =
      _$ExamCollectionCopyWithImpl<$Res, ExamCollection>;
  @useResult
  $Res call(
      {dynamic id,
      String? title,
      dynamic isActive,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic selectableByTeachers});
}

/// @nodoc
class _$ExamCollectionCopyWithImpl<$Res, $Val extends ExamCollection>
    implements $ExamCollectionCopyWith<$Res> {
  _$ExamCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? selectableByTeachers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectableByTeachers: freezed == selectableByTeachers
          ? _value.selectableByTeachers
          : selectableByTeachers // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExamCollectionCopyWith<$Res>
    implements $ExamCollectionCopyWith<$Res> {
  factory _$$_ExamCollectionCopyWith(
          _$_ExamCollection value, $Res Function(_$_ExamCollection) then) =
      __$$_ExamCollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String? title,
      dynamic isActive,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic selectableByTeachers});
}

/// @nodoc
class __$$_ExamCollectionCopyWithImpl<$Res>
    extends _$ExamCollectionCopyWithImpl<$Res, _$_ExamCollection>
    implements _$$_ExamCollectionCopyWith<$Res> {
  __$$_ExamCollectionCopyWithImpl(
      _$_ExamCollection _value, $Res Function(_$_ExamCollection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? selectableByTeachers = freezed,
  }) {
    return _then(_$_ExamCollection(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectableByTeachers: freezed == selectableByTeachers
          ? _value.selectableByTeachers
          : selectableByTeachers // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExamCollection implements _ExamCollection {
  const _$_ExamCollection(
      {this.id,
      this.title,
      this.isActive,
      this.createdAt,
      this.updatedAt,
      this.selectableByTeachers});

  factory _$_ExamCollection.fromJson(Map<String, dynamic> json) =>
      _$$_ExamCollectionFromJson(json);

  @override
  final dynamic id;
  @override
  final String? title;
  @override
  final dynamic isActive;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final dynamic selectableByTeachers;

  @override
  String toString() {
    return 'ExamCollection(id: $id, title: $title, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, selectableByTeachers: $selectableByTeachers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExamCollection &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.selectableByTeachers, selectableByTeachers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      title,
      const DeepCollectionEquality().hash(isActive),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(selectableByTeachers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExamCollectionCopyWith<_$_ExamCollection> get copyWith =>
      __$$_ExamCollectionCopyWithImpl<_$_ExamCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExamCollectionToJson(
      this,
    );
  }
}

abstract class _ExamCollection implements ExamCollection {
  const factory _ExamCollection(
      {final dynamic id,
      final String? title,
      final dynamic isActive,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final dynamic selectableByTeachers}) = _$_ExamCollection;

  factory _ExamCollection.fromJson(Map<String, dynamic> json) =
      _$_ExamCollection.fromJson;

  @override
  dynamic get id;
  @override
  String? get title;
  @override
  dynamic get isActive;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  dynamic get selectableByTeachers;
  @override
  @JsonKey(ignore: true)
  _$$_ExamCollectionCopyWith<_$_ExamCollection> get copyWith =>
      throw _privateConstructorUsedError;
}
