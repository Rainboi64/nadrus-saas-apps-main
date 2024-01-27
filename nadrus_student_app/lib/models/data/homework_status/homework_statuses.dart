import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework_statuses.freezed.dart';
part 'homework_statuses.g.dart';

// ----------(json)----------
/*
{
          "id": 4,
          "homework_id": 2,
          "student_id": 3,
          "done": 1
        }
*/
// --------------------------

@freezed
class HomeworkStatuses with _$HomeworkStatuses {
  const factory HomeworkStatuses({
    dynamic id,
    dynamic homeworkId,
    dynamic studentId,
    dynamic done,
  }) = _HomeworkStatuses;

  factory HomeworkStatuses.fromJson(Map<String, dynamic> json) =>
      _$HomeworkStatusesFromJson(json);
}
