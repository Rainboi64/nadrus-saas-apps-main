import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data_models.dart';

part 'class.freezed.dart';
part 'class.g.dart';

// ----------(json)----------
/*
{
"id": 7,
"teacher_id": 1,
"lesson_id": 4,
"weekly_schedule_id": 1873,
"completion_rate": "0.50",
"date": "2023-07-27",
"lesson": {
"id": 4,
"name": "نهايات",
"description": "شرح الدرس",
"order": 4,
"unit_id": 2
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
    String? completionRate,
    String? date,
    Lesson? lesson,
    @JsonKey(defaultValue: []) required List<Homework> homeworks,
  }) = _Class;

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
}
