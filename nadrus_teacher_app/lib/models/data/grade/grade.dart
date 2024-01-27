import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nadrus_teacher_app/models/data/section/section.dart';

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
    String? type,
    String? label,
    @JsonKey(defaultValue: []) required List<Section> sections,
  }) = _Grade;

  factory Grade.fromJson(Map<String, dynamic> json) => _$GradeFromJson(json);
}
