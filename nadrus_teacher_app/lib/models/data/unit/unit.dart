import 'package:freezed_annotation/freezed_annotation.dart';

import '../subject/subject.dart';

part 'unit.freezed.dart';
part 'unit.g.dart';

// ----------(json)----------
/*
{
            "id": 1,
            "nth_unit": 1,
            "title": "الوحدة الأولى",
            "subject_id": 1,
            "subject": {}
}
*/
// --------------------------

@freezed
class Unit with _$Unit {
  const factory Unit({
    int? id,
    int? nthUnit,
    String? title,
    int? subjectId,
    Subject? subject,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}
