import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nadrus_teacher_app/models/data/grade/grade.dart';
import 'package:nadrus_teacher_app/models/data/section/section.dart';

part 'school.freezed.dart';
part 'school.g.dart';

// ----------(json)----------
/*
 {
      "tenant": "alawael",
      "grade": {
        "id": 1,
        "nth_grade": 1,
        "type": "SCIENTIFIC",
        "label": "الصف الأول العلمي",
        "sections": [
          {
            "id": 1,
            "nth_section": 1,
            "grade_id": 1,
            "label": "الشعبة الأول"
          },
          {
            "id": 2,
            "nth_section": 2,
            "grade_id": 1,
            "label": "الشعبة الثاني"
          },
          {
            "id": 3,
            "nth_section": 3,
            "grade_id": 1,
            "label": "الشعبة الثالث"
          },
          {
            "id": 4,
            "nth_section": 4,
            "grade_id": 1,
            "label": "الشعبة الرابع"
          }
        ]
      },
      "sections": [
        {
          "id": 1,
          "nth_section": 1,
          "grade_id": 1,
          "label": "الشعبة الأول"
        },
        {
          "id": 2,
          "nth_section": 2,
          "grade_id": 1,
          "label": "الشعبة الثاني"
        },
        {
          "id": 3,
          "nth_section": 3,
          "grade_id": 1,
          "label": "الشعبة الثالث"
        },
        {
          "id": 4,
          "nth_section": 4,
          "grade_id": 1,
          "label": "الشعبة الرابع"
        }
      ]
    }
*/
// --------------------------

@freezed
class School with _$School {
  const factory School({
    String? tenant,
    Grade? grade,
    String? type,
    @JsonKey(defaultValue: []) required List<Section> sections,
  }) = _School;

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
}
