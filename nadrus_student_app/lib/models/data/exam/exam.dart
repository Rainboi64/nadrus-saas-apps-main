import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nadrus_student_app/models/data/score/score.dart';
import 'package:nadrus_student_app/models/data/subject/subject.dart';

part 'exam.freezed.dart';
part 'exam.g.dart';

// ----------(json)----------
/*
 {
      "id": 1,
      "exam_collection_id": 1,
      "section_id": 1,
      "title": "سبر رياضيات",
      "description": "كل ما اخذ",
      "date": "2023-08-12",
      "done": 0,
      "checked": 0,
      "total_score": 100,
      "subjects": [],
      "scores": []
    }
*/
// --------------------------

@freezed
class Exam with _$Exam {
  const factory Exam(
      {dynamic id,
      dynamic examCollectionId,
      dynamic sectionId,
      String? title,
      String? description,
      String? date,
      dynamic done,
      dynamic checked,
      dynamic totalScore,
      dynamic classId,
      @JsonKey(defaultValue: []) required List<Subject> subjects,
      @JsonKey(defaultValue: []) required List<Score> scores}) = _Exam;

  factory Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);
}

extension ExamExtension on Exam {
  String deservedScore() {
    String deservedScore = "☐";
    if (scores.isNotEmpty) {
      deservedScore = scores[0].deservedScore?.toString() ?? "";
    }
    return deservedScore;
  }
}
