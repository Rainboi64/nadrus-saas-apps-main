// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonDetails _$LessonDetailsFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$LessonDetails {
  @JsonKey(defaultValue: [])
  List<Details> get details => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Exam> get exams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonDetailsCopyWith<LessonDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonDetailsCopyWith<$Res> {
  factory $LessonDetailsCopyWith(
          LessonDetails value, $Res Function(LessonDetails) then) =
      _$LessonDetailsCopyWithImpl<$Res, LessonDetails>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<Details> details,
      @JsonKey(defaultValue: []) List<Exam> exams});
}

/// @nodoc
class _$LessonDetailsCopyWithImpl<$Res, $Val extends LessonDetails>
    implements $LessonDetailsCopyWith<$Res> {
  _$LessonDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? exams = null,
  }) {
    return _then(_value.copyWith(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Details>,
      exams: null == exams
          ? _value.exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonCopyWith<$Res>
    implements $LessonDetailsCopyWith<$Res> {
  factory _$$_LessonCopyWith(_$_Lesson value, $Res Function(_$_Lesson) then) =
      __$$_LessonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<Details> details,
      @JsonKey(defaultValue: []) List<Exam> exams});
}

/// @nodoc
class __$$_LessonCopyWithImpl<$Res>
    extends _$LessonDetailsCopyWithImpl<$Res, _$_Lesson>
    implements _$$_LessonCopyWith<$Res> {
  __$$_LessonCopyWithImpl(_$_Lesson _value, $Res Function(_$_Lesson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? exams = null,
  }) {
    return _then(_$_Lesson(
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Details>,
      exams: null == exams
          ? _value._exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lesson implements _Lesson {
  const _$_Lesson(
      {@JsonKey(defaultValue: []) required final List<Details> details,
      @JsonKey(defaultValue: []) required final List<Exam> exams})
      : _details = details,
        _exams = exams;

  factory _$_Lesson.fromJson(Map<String, dynamic> json) =>
      _$$_LessonFromJson(json);

  final List<Details> _details;
  @override
  @JsonKey(defaultValue: [])
  List<Details> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  final List<Exam> _exams;
  @override
  @JsonKey(defaultValue: [])
  List<Exam> get exams {
    if (_exams is EqualUnmodifiableListView) return _exams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exams);
  }

  @override
  String toString() {
    return 'LessonDetails(details: $details, exams: $exams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lesson &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            const DeepCollectionEquality().equals(other._exams, _exams));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_details),
      const DeepCollectionEquality().hash(_exams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      __$$_LessonCopyWithImpl<_$_Lesson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonToJson(
      this,
    );
  }
}

abstract class _Lesson implements LessonDetails {
  const factory _Lesson(
      {@JsonKey(defaultValue: []) required final List<Details> details,
      @JsonKey(defaultValue: []) required final List<Exam> exams}) = _$_Lesson;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$_Lesson.fromJson;

  @override
  @JsonKey(defaultValue: [])
  List<Details> get details;
  @override
  @JsonKey(defaultValue: [])
  List<Exam> get exams;
  @override
  @JsonKey(ignore: true)
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      throw _privateConstructorUsedError;
}
