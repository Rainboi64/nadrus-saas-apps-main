import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nadrus_teacher_app/models/data_models.dart';

part 'class_details.freezed.dart';
part 'class_details.g.dart';

// ----------(json)----------
/*
{
"current_class": null,
"previous_class": {
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
},
"homeworks": []
},
"next_lesson_suggestions": [
{
"name": "نهايات"
},
{
"name": "نهايات"
}
],
"homeworks_suggestions": [
{
"name": "أسئلة الدرس"
},
{
"name": "أسئلة الوحدة"
},
{
"name": "تمارين الدرس"
}
]
}
*/
// --------------------------

@freezed
class ClassDetails with _$ClassDetails {
  const factory ClassDetails({
    Class? currentClass,
    Class? previousClass,
    @JsonKey(defaultValue: []) required List<Lesson> nextLessonSuggestions,
    @JsonKey(defaultValue: []) required List<Homework> homeworksSuggestions,
  }) = _ClassDetails;

  factory ClassDetails.fromJson(Map<String, dynamic> json) =>
      _$ClassDetailsFromJson(json);
}
