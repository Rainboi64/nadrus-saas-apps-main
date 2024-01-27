// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Exam _$ExamFromJson(Map<String, dynamic> json) {
  return _Exam.fromJson(json);
}

/// @nodoc
mixin _$Exam {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get examCollectionId => throw _privateConstructorUsedError;
  dynamic get sectionId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  dynamic get done => throw _privateConstructorUsedError;
  dynamic get checked => throw _privateConstructorUsedError;
  dynamic get totalScore => throw _privateConstructorUsedError;
  dynamic get classId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Subject> get subjects => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Score> get scores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamCopyWith<Exam> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamCopyWith<$Res> {
  factory $ExamCopyWith(Exam value, $Res Function(Exam) then) =
      _$ExamCopyWithImpl<$Res, Exam>;
  @useResult
  $Res call(
      {dynamic id,
      dynamic examCollectionId,
      dynamic sectionId,
      String? title,
      String? description,
      String? date,
      dynamic done,
      dynamic checked,
      dynamic totalScore,
      dynamic classId,
      @JsonKey(defaultValue: []) List<Subject> subjects,
      @JsonKey(defaultValue: []) List<Score> scores});
}

/// @nodoc
class _$ExamCopyWithImpl<$Res, $Val extends Exam>
    implements $ExamCopyWith<$Res> {
  _$ExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? examCollectionId = freezed,
    Object? sectionId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? date = freezed,
    Object? done = freezed,
    Object? checked = freezed,
    Object? totalScore = freezed,
    Object? classId = freezed,
    Object? subjects = null,
    Object? scores = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      examCollectionId: freezed == examCollectionId
          ? _value.examCollectionId
          : examCollectionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as dynamic,
      checked: freezed == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalScore: freezed == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as dynamic,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subjects: null == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExamCopyWith<$Res> implements $ExamCopyWith<$Res> {
  factory _$$_ExamCopyWith(_$_Exam value, $Res Function(_$_Exam) then) =
      __$$_ExamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic examCollectionId,
      dynamic sectionId,
      String? title,
      String? description,
      String? date,
      dynamic done,
      dynamic checked,
      dynamic totalScore,
      dynamic classId,
      @JsonKey(defaultValue: []) List<Subject> subjects,
      @JsonKey(defaultValue: []) List<Score> scores});
}

/// @nodoc
class __$$_ExamCopyWithImpl<$Res> extends _$ExamCopyWithImpl<$Res, _$_Exam>
    implements _$$_ExamCopyWith<$Res> {
  __$$_ExamCopyWithImpl(_$_Exam _value, $Res Function(_$_Exam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? examCollectionId = freezed,
    Object? sectionId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? date = freezed,
    Object? done = freezed,
    Object? checked = freezed,
    Object? totalScore = freezed,
    Object? classId = freezed,
    Object? subjects = null,
    Object? scores = null,
  }) {
    return _then(_$_Exam(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      examCollectionId: freezed == examCollectionId
          ? _value.examCollectionId
          : examCollectionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as dynamic,
      checked: freezed == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalScore: freezed == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as dynamic,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Exam implements _Exam {
  const _$_Exam(
      {this.id,
      this.examCollectionId,
      this.sectionId,
      this.title,
      this.description,
      this.date,
      this.done,
      this.checked,
      this.totalScore,
      this.classId,
      @JsonKey(defaultValue: []) required final List<Subject> subjects,
      @JsonKey(defaultValue: []) required final List<Score> scores})
      : _subjects = subjects,
        _scores = scores;

  factory _$_Exam.fromJson(Map<String, dynamic> json) => _$$_ExamFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic examCollectionId;
  @override
  final dynamic sectionId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? date;
  @override
  final dynamic done;
  @override
  final dynamic checked;
  @override
  final dynamic totalScore;
  @override
  final dynamic classId;
  final List<Subject> _subjects;
  @override
  @JsonKey(defaultValue: [])
  List<Subject> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  final List<Score> _scores;
  @override
  @JsonKey(defaultValue: [])
  List<Score> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  String toString() {
    return 'Exam(id: $id, examCollectionId: $examCollectionId, sectionId: $sectionId, title: $title, description: $description, date: $date, done: $done, checked: $checked, totalScore: $totalScore, classId: $classId, subjects: $subjects, scores: $scores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exam &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.examCollectionId, examCollectionId) &&
            const DeepCollectionEquality().equals(other.sectionId, sectionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.checked, checked) &&
            const DeepCollectionEquality()
                .equals(other.totalScore, totalScore) &&
            const DeepCollectionEquality().equals(other.classId, classId) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality().equals(other._scores, _scores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(examCollectionId),
      const DeepCollectionEquality().hash(sectionId),
      title,
      description,
      date,
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(checked),
      const DeepCollectionEquality().hash(totalScore),
      const DeepCollectionEquality().hash(classId),
      const DeepCollectionEquality().hash(_subjects),
      const DeepCollectionEquality().hash(_scores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExamCopyWith<_$_Exam> get copyWith =>
      __$$_ExamCopyWithImpl<_$_Exam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExamToJson(
      this,
    );
  }
}

abstract class _Exam implements Exam {
  const factory _Exam(
      {final dynamic id,
      final dynamic examCollectionId,
      final dynamic sectionId,
      final String? title,
      final String? description,
      final String? date,
      final dynamic done,
      final dynamic checked,
      final dynamic totalScore,
      final dynamic classId,
      @JsonKey(defaultValue: []) required final List<Subject> subjects,
      @JsonKey(defaultValue: []) required final List<Score> scores}) = _$_Exam;

  factory _Exam.fromJson(Map<String, dynamic> json) = _$_Exam.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get examCollectionId;
  @override
  dynamic get sectionId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get date;
  @override
  dynamic get done;
  @override
  dynamic get checked;
  @override
  dynamic get totalScore;
  @override
  dynamic get classId;
  @override
  @JsonKey(defaultValue: [])
  List<Subject> get subjects;
  @override
  @JsonKey(defaultValue: [])
  List<Score> get scores;
  @override
  @JsonKey(ignore: true)
  _$$_ExamCopyWith<_$_Exam> get copyWith => throw _privateConstructorUsedError;
}
