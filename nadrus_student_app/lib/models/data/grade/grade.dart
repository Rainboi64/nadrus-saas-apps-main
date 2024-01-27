import 'package:freezed_annotation/freezed_annotation.dart';

part 'grade.freezed.dart';
part 'grade.g.dart';

// ----------(json)----------
/*
{
        "id": 1,
        "nth_grade": 1,
        "type": "SCIENTIFIC",
        "label": "الصف الأول العلمي"
      
} 
*/
// --------------------------

@freezed
class Grade with _$Grade {
  const factory Grade({
    dynamic id,
    dynamic nthGrade,
    dynamic gradeId,
    String? type,
    String? label,
  }) = _Grade;

  factory Grade.fromJson(Map<String, dynamic> json) => _$GradeFromJson(json);
}
