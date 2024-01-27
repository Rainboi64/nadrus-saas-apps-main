import 'package:freezed_annotation/freezed_annotation.dart';

import '../grade/grade.dart';

part 'section.freezed.dart';
part 'section.g.dart';

// ----------(json)----------
/*
{
      "id": 1,
      "nth_section": 1,
      "grade_id": 1,
      "label": "الشعبة الأول",
      "grade": {}
}

*/
// --------------------------

@freezed
class Section with _$Section {
  const factory Section(
      {dynamic id,
      dynamic nthSection,
      dynamic gradeId,
      String? label,
      Grade? grade}) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}
