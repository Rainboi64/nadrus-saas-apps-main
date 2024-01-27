import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';
part 'announcement.g.dart';

// ----------(json)----------
/*
 {
      "id": 1,
      "title": "Important title",
      "description": "The announcement description.",
      "menu": null,
      "expires_at": "2023-08-04",
      "section_id": 1,
      "created_at": "2023-07-22T12:03:27.000000Z",
      "updated_at": "2023-07-22T12:03:27.000000Z",
      "image_path": null
    }
*/
// --------------------------

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    dynamic id,
    String? title,
    String? description,
    dynamic menu,
    String? expiresAt,
    dynamic sectionId,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic imagePath,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}
