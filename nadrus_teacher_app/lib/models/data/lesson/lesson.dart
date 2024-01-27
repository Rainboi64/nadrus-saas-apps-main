import 'package:freezed_annotation/freezed_annotation.dart';

import '../unit/unit.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

// ----------(json)----------
/*
{
          "id": 1,
          "name": "متتاليات",
          "description": "شرح الدرس",
          "order": 1,
          "unit_id": 1,
          "unit": {}
}
*/
// --------------------------

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    int? id,
    String? name,
    String? description,
    int? order,
    int? unitId,
    Unit? unit,
    @Default(false) bool selected,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
