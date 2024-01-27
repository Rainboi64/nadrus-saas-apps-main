import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data_models.dart';

part 'class.freezed.dart';
part 'class.g.dart';

// ----------(json)----------
/*
{
        "id": 1,
        "teacher_id": 1,
        "lesson_id": 1,
        "weekly_schedule_id": 1450,
        "completion_rate": "0.50",
        "date": "2023-06-01",
        "lesson": {}
 }
*/
// --------------------------

@freezed
class Class with _$Class {
  const factory Class({
    dynamic id,
    dynamic teacherId,
    dynamic lessonId,
    dynamic weeklyScheduleId,
    dynamic completionRate,
    String? date,
    Lesson? lesson,
  }) = _Class;

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
}

extension ClassExtension on Class {
  bool subjectNotNull() =>
      lesson != null &&
      lesson!.unit != null &&
      lesson!.unit!.subject!.name != null;
  String subjectName() => lesson!.unit!.subject!.name!;

  bool lessonNotNull() => lesson != null && lesson!.name != null;
  String lessonName() => lesson!.name!;
}
