import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_collection.freezed.dart';
part 'exam_collection.g.dart';

// ----------(json)----------
/*
   {
      "id": 1,
      "title": "سبور الفصل الأول",
      "is_active": 1,
      "created_at": "2023-07-28T20:34:27.000000Z",
      "updated_at": "2023-07-28T20:41:14.000000Z",
      "selectable_by_teachers": 1
    }
*/
// --------------------------

@freezed
class ExamCollection with _$ExamCollection {
  const factory ExamCollection({
    dynamic id,
    String? title,
    dynamic isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic selectableByTeachers,
  }) = _ExamCollection;

  factory ExamCollection.fromJson(Map<String, dynamic> json) =>
      _$ExamCollectionFromJson(json);
}
