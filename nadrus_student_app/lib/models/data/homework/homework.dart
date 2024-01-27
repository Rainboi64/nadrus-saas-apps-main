import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nadrus_student_app/models/data/homework_status/homework_statuses.dart';

import '../../data_models.dart';

part 'homework.freezed.dart';
part 'homework.g.dart';

// ----------(json)----------
/*
{
    "id": 1,
    "class_id": 1,
    "content": "First page of the lesson",
    "deadline_date": "2023-10-06",
    "created_at": "2023-06-08T15:00:00.000000Z",
    "updated_at": "2023-06-08T15:00:00.000000Z"
    "class": {}
 }
*/
// --------------------------

@freezed
class Homework with _$Homework {
  const factory Homework({
    dynamic id,
    dynamic classId,
    String? content,
    String? deadlineDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic checked,
    @JsonKey(defaultValue: []) required List<HomeworkStatuses> homeworkStatuses,
    @JsonKey(name: "class") Class? schoolClass,
    bool? status,
  }) = _Homework;

  factory Homework.fromJson(Map<String, dynamic> json) =>
      _$HomeworkFromJson(json);
}

///Homework Statuses
enum HomeworkStatus {
  solvedAndCorrected,
  solvedAndNotCorrected,
  notSolvedAndCorrected,
  notSolvedAndNotCorrected
}

extension HomeworkExtension on Homework {
  bool subjectNotNull() =>
      schoolClass != null &&
      schoolClass!.lesson != null &&
      schoolClass!.lesson!.unit != null &&
      schoolClass!.lesson!.unit!.subject!.name != null;
  String subjectName() => schoolClass!.lesson!.unit!.subject!.name!;

  bool lessonNotNull() =>
      schoolClass != null &&
      schoolClass!.lesson != null &&
      schoolClass!.lesson!.name != null;
  String lessonName() => schoolClass!.lesson!.name!;

  HomeworkStatus getHomeworkStatuses() {
    bool isSolved = false;
    if (homeworkStatuses.isNotEmpty) {
      isSolved = homeworkStatuses[0].done.toString() == "1";
    }

    bool isCorrected = this.checked.toString() == "1";
    if (isSolved && isCorrected) {
      return HomeworkStatus.solvedAndCorrected;
    }
    if (isSolved && !isCorrected) {
      return HomeworkStatus.solvedAndNotCorrected;
    }
    if (!isSolved && isCorrected) {
      return HomeworkStatus.notSolvedAndCorrected;
    }
    //!isSolved && !isCorrected
    return HomeworkStatus.notSolvedAndNotCorrected;
  }
}
