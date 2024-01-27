// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassDetails _$ClassDetailsFromJson(Map<String, dynamic> json) {
  return _ClassDetails.fromJson(json);
}

/// @nodoc
mixin _$ClassDetails {
  Class? get currentClass => throw _privateConstructorUsedError;
  Class? get previousClass => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Lesson> get nextLessonSuggestions => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Homework> get homeworksSuggestions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassDetailsCopyWith<ClassDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassDetailsCopyWith<$Res> {
  factory $ClassDetailsCopyWith(
          ClassDetails value, $Res Function(ClassDetails) then) =
      _$ClassDetailsCopyWithImpl<$Res, ClassDetails>;
  @useResult
  $Res call(
      {Class? currentClass,
      Class? previousClass,
      @JsonKey(defaultValue: []) List<Lesson> nextLessonSuggestions,
      @JsonKey(defaultValue: []) List<Homework> homeworksSuggestions});

  $ClassCopyWith<$Res>? get currentClass;
  $ClassCopyWith<$Res>? get previousClass;
}

/// @nodoc
class _$ClassDetailsCopyWithImpl<$Res, $Val extends ClassDetails>
    implements $ClassDetailsCopyWith<$Res> {
  _$ClassDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentClass = freezed,
    Object? previousClass = freezed,
    Object? nextLessonSuggestions = null,
    Object? homeworksSuggestions = null,
  }) {
    return _then(_value.copyWith(
      currentClass: freezed == currentClass
          ? _value.currentClass
          : currentClass // ignore: cast_nullable_to_non_nullable
              as Class?,
      previousClass: freezed == previousClass
          ? _value.previousClass
          : previousClass // ignore: cast_nullable_to_non_nullable
              as Class?,
      nextLessonSuggestions: null == nextLessonSuggestions
          ? _value.nextLessonSuggestions
          : nextLessonSuggestions // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      homeworksSuggestions: null == homeworksSuggestions
          ? _value.homeworksSuggestions
          : homeworksSuggestions // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassCopyWith<$Res>? get currentClass {
    if (_value.currentClass == null) {
      return null;
    }

    return $ClassCopyWith<$Res>(_value.currentClass!, (value) {
      return _then(_value.copyWith(currentClass: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassCopyWith<$Res>? get previousClass {
    if (_value.previousClass == null) {
      return null;
    }

    return $ClassCopyWith<$Res>(_value.previousClass!, (value) {
      return _then(_value.copyWith(previousClass: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClassDetailsCopyWith<$Res>
    implements $ClassDetailsCopyWith<$Res> {
  factory _$$_ClassDetailsCopyWith(
          _$_ClassDetails value, $Res Function(_$_ClassDetails) then) =
      __$$_ClassDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Class? currentClass,
      Class? previousClass,
      @JsonKey(defaultValue: []) List<Lesson> nextLessonSuggestions,
      @JsonKey(defaultValue: []) List<Homework> homeworksSuggestions});

  @override
  $ClassCopyWith<$Res>? get currentClass;
  @override
  $ClassCopyWith<$Res>? get previousClass;
}

/// @nodoc
class __$$_ClassDetailsCopyWithImpl<$Res>
    extends _$ClassDetailsCopyWithImpl<$Res, _$_ClassDetails>
    implements _$$_ClassDetailsCopyWith<$Res> {
  __$$_ClassDetailsCopyWithImpl(
      _$_ClassDetails _value, $Res Function(_$_ClassDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentClass = freezed,
    Object? previousClass = freezed,
    Object? nextLessonSuggestions = null,
    Object? homeworksSuggestions = null,
  }) {
    return _then(_$_ClassDetails(
      currentClass: freezed == currentClass
          ? _value.currentClass
          : currentClass // ignore: cast_nullable_to_non_nullable
              as Class?,
      previousClass: freezed == previousClass
          ? _value.previousClass
          : previousClass // ignore: cast_nullable_to_non_nullable
              as Class?,
      nextLessonSuggestions: null == nextLessonSuggestions
          ? _value._nextLessonSuggestions
          : nextLessonSuggestions // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      homeworksSuggestions: null == homeworksSuggestions
          ? _value._homeworksSuggestions
          : homeworksSuggestions // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassDetails implements _ClassDetails {
  const _$_ClassDetails(
      {this.currentClass,
      this.previousClass,
      @JsonKey(defaultValue: [])
          required final List<Lesson> nextLessonSuggestions,
      @JsonKey(defaultValue: [])
          required final List<Homework> homeworksSuggestions})
      : _nextLessonSuggestions = nextLessonSuggestions,
        _homeworksSuggestions = homeworksSuggestions;

  factory _$_ClassDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ClassDetailsFromJson(json);

  @override
  final Class? currentClass;
  @override
  final Class? previousClass;
  final List<Lesson> _nextLessonSuggestions;
  @override
  @JsonKey(defaultValue: [])
  List<Lesson> get nextLessonSuggestions {
    if (_nextLessonSuggestions is EqualUnmodifiableListView)
      return _nextLessonSuggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nextLessonSuggestions);
  }

  final List<Homework> _homeworksSuggestions;
  @override
  @JsonKey(defaultValue: [])
  List<Homework> get homeworksSuggestions {
    if (_homeworksSuggestions is EqualUnmodifiableListView)
      return _homeworksSuggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeworksSuggestions);
  }

  @override
  String toString() {
    return 'ClassDetails(currentClass: $currentClass, previousClass: $previousClass, nextLessonSuggestions: $nextLessonSuggestions, homeworksSuggestions: $homeworksSuggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassDetails &&
            (identical(other.currentClass, currentClass) ||
                other.currentClass == currentClass) &&
            (identical(other.previousClass, previousClass) ||
                other.previousClass == previousClass) &&
            const DeepCollectionEquality()
                .equals(other._nextLessonSuggestions, _nextLessonSuggestions) &&
            const DeepCollectionEquality()
                .equals(other._homeworksSuggestions, _homeworksSuggestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentClass,
      previousClass,
      const DeepCollectionEquality().hash(_nextLessonSuggestions),
      const DeepCollectionEquality().hash(_homeworksSuggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassDetailsCopyWith<_$_ClassDetails> get copyWith =>
      __$$_ClassDetailsCopyWithImpl<_$_ClassDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassDetailsToJson(
      this,
    );
  }
}

abstract class _ClassDetails implements ClassDetails {
  const factory _ClassDetails(
          {final Class? currentClass,
          final Class? previousClass,
          @JsonKey(defaultValue: [])
              required final List<Lesson> nextLessonSuggestions,
          @JsonKey(defaultValue: [])
              required final List<Homework> homeworksSuggestions}) =
      _$_ClassDetails;

  factory _ClassDetails.fromJson(Map<String, dynamic> json) =
      _$_ClassDetails.fromJson;

  @override
  Class? get currentClass;
  @override
  Class? get previousClass;
  @override
  @JsonKey(defaultValue: [])
  List<Lesson> get nextLessonSuggestions;
  @override
  @JsonKey(defaultValue: [])
  List<Homework> get homeworksSuggestions;
  @override
  @JsonKey(ignore: true)
  _$$_ClassDetailsCopyWith<_$_ClassDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
