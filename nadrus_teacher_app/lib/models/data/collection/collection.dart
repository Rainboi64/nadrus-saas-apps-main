import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

// ----------(json)----------
/*
{
"id": 1,
"title": "سبور الفصل الأول",
"type": "QUIZ",
"is_active": 1,
"created_at": "2023-07-28T20:34:27.000000Z",
"updated_at": "2023-07-28T20:41:14.000000Z",
"selectable_by_teachers": 1
}
*/
// --------------------------

@freezed
class Collection with _$Collection {
  const factory Collection({
    dynamic id,
    String? title,
    String? type,
    @JsonKey(name: 'is_active') dynamic isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: "selectable_by_teachers") dynamic selectableByTeachers,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
