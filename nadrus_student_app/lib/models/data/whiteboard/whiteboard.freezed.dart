// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whiteboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Whiteboard _$WhiteboardFromJson(Map<String, dynamic> json) {
  return _Whiteboard.fromJson(json);
}

/// @nodoc
mixin _$Whiteboard {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get classId => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  Class? get schoolClass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WhiteboardCopyWith<Whiteboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhiteboardCopyWith<$Res> {
  factory $WhiteboardCopyWith(
          Whiteboard value, $Res Function(Whiteboard) then) =
      _$WhiteboardCopyWithImpl<$Res, Whiteboard>;
  @useResult
  $Res call(
      {dynamic id,
      dynamic classId,
      String? imagePath,
      @JsonKey(name: "class") Class? schoolClass});

  $ClassCopyWith<$Res>? get schoolClass;
}

/// @nodoc
class _$WhiteboardCopyWithImpl<$Res, $Val extends Whiteboard>
    implements $WhiteboardCopyWith<$Res> {
  _$WhiteboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? imagePath = freezed,
    Object? schoolClass = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolClass: freezed == schoolClass
          ? _value.schoolClass
          : schoolClass // ignore: cast_nullable_to_non_nullable
              as Class?,
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
abstract class _$$_WhiteboardCopyWith<$Res>
    implements $WhiteboardCopyWith<$Res> {
  factory _$$_WhiteboardCopyWith(
          _$_Whiteboard value, $Res Function(_$_Whiteboard) then) =
      __$$_WhiteboardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic classId,
      String? imagePath,
      @JsonKey(name: "class") Class? schoolClass});

  @override
  $ClassCopyWith<$Res>? get schoolClass;
}

/// @nodoc
class __$$_WhiteboardCopyWithImpl<$Res>
    extends _$WhiteboardCopyWithImpl<$Res, _$_Whiteboard>
    implements _$$_WhiteboardCopyWith<$Res> {
  __$$_WhiteboardCopyWithImpl(
      _$_Whiteboard _value, $Res Function(_$_Whiteboard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? imagePath = freezed,
    Object? schoolClass = freezed,
  }) {
    return _then(_$_Whiteboard(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolClass: freezed == schoolClass
          ? _value.schoolClass
          : schoolClass // ignore: cast_nullable_to_non_nullable
              as Class?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Whiteboard implements _Whiteboard {
  const _$_Whiteboard(
      {this.id,
      this.classId,
      this.imagePath,
      @JsonKey(name: "class") this.schoolClass});

  factory _$_Whiteboard.fromJson(Map<String, dynamic> json) =>
      _$$_WhiteboardFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic classId;
  @override
  final String? imagePath;
  @override
  @JsonKey(name: "class")
  final Class? schoolClass;

  @override
  String toString() {
    return 'Whiteboard(id: $id, classId: $classId, imagePath: $imagePath, schoolClass: $schoolClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Whiteboard &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.classId, classId) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.schoolClass, schoolClass) ||
                other.schoolClass == schoolClass));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(classId),
      imagePath,
      schoolClass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WhiteboardCopyWith<_$_Whiteboard> get copyWith =>
      __$$_WhiteboardCopyWithImpl<_$_Whiteboard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WhiteboardToJson(
      this,
    );
  }
}

abstract class _Whiteboard implements Whiteboard {
  const factory _Whiteboard(
      {final dynamic id,
      final dynamic classId,
      final String? imagePath,
      @JsonKey(name: "class") final Class? schoolClass}) = _$_Whiteboard;

  factory _Whiteboard.fromJson(Map<String, dynamic> json) =
      _$_Whiteboard.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get classId;
  @override
  String? get imagePath;
  @override
  @JsonKey(name: "class")
  Class? get schoolClass;
  @override
  @JsonKey(ignore: true)
  _$$_WhiteboardCopyWith<_$_Whiteboard> get copyWith =>
      throw _privateConstructorUsedError;
}
