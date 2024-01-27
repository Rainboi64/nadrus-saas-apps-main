import 'package:freezed_annotation/freezed_annotation.dart';

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
    int? id,
    int? classId,
    String? content,
    String? name,
    String? deadlineDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "class") Class? schoolClass,
    @Default(false) bool selected,
  }) = _Homework;

  factory Homework.fromJson(Map<String, dynamic> json) =>
      _$HomeworkFromJson(json);
}
