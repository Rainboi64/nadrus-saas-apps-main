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
    dynamic id,
    String? name,
    String? description,
    dynamic order,
    dynamic unitId,
    Unit? unit,
    String? totalCompletionRate,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
