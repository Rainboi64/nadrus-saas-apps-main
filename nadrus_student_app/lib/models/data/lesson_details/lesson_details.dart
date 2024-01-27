import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nadrus_student_app/models/data/details/details.dart';
import 'package:nadrus_student_app/models/data/exam/exam.dart';

part 'lesson_details.freezed.dart';
part 'lesson_details.g.dart';

// ----------(json)----------
/*
{
    details:[{}],
      "exams": []
}
*/
// --------------------------

@freezed
class LessonDetails with _$LessonDetails {
  const factory LessonDetails({
    @JsonKey(defaultValue: []) required List<Details> details,
    @JsonKey(defaultValue: []) required List<Exam> exams,
  }) = _Lesson;

  factory LessonDetails.fromJson(Map<String, dynamic> json) =>
      _$LessonDetailsFromJson(json);
}
