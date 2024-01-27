import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nadrus_student_app/models/data/exam/exam.dart';
import 'package:nadrus_student_app/models/data/homework/homework.dart';
import 'package:nadrus_student_app/models/data/whiteboard/whiteboard.dart';

import '../lesson/lesson.dart';

part 'details.freezed.dart';
part 'details.g.dart';

// ----------(json)----------
/*
{
      "id": 3,
      "teacher_id": 1,
      "lesson_id": 2,
      "weekly_schedule_id": 1009,
      "completion_rate": "1.00",
      "date": "2023-07-19",
      "lesson": {
        "id": 2,
        "name": "اشتقاق",
        "description": "شرح الدرس",
        "order": 2,
        "unit_id": 1
      },
      "whiteboards": [
        {
          "id": 1,
          "class_id": 3,
          "image_path": "whiteboard/3/1689773668.png"
        },
      ],
      "homeworks": [],
      "exams": []
    }
*/
// --------------------------

@freezed
class Details with _$Details {
  const factory Details({
    dynamic id,
    dynamic teacherId,
    dynamic lessonId,
    dynamic weeklyScheduleId,
    String? completionRate,
    String? date,
    Lesson? lesson,
    @JsonKey(defaultValue: []) required List<Whiteboard> whiteboards,
    @JsonKey(defaultValue: []) required List<Homework> homeworks,
    @JsonKey(defaultValue: []) required List<Exam> exams,
  }) = _Lesson;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}
