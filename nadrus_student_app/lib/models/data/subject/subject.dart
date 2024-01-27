import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

// ----------(json)----------
/*
{
  "id": 1,
  "name": "رياضيات ــ تحليل",
  "icon_name": "MATH_1",
  "png_icon": "http://localhost:8000/storage/icons/png/MATH_1.png",
  "svg_icon": "http://localhost:8000/storage/icons/png/MATH_1.svg",
  "grade_id": 1,
  "teacher_id": 1
}
*/
// --------------------------

@freezed
class Subject with _$Subject {
  const factory Subject({
    dynamic id,
    String? name,
    String? iconName,
    String? pngIcon,
    String? svgIcon,
    dynamic gradeId,
    dynamic lessonsCount,
    dynamic teacherId,
    dynamic seedingId,
    @Default(false) bool selected,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
