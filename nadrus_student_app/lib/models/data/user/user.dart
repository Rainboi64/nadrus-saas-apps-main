import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nadrus_student_app/models/data/parent/parent.dart';
import 'package:nadrus_student_app/models/data/section/section.dart';

part 'user.freezed.dart';
part 'user.g.dart';

// ----------(json)----------
/*
{
    "id": 3,
    "first_name": "ثريا",
    "last_name": "الحسني",
    "phone_number": "+963956124584",
    "username": "thuraya",
    "fcm_token": null,
    "created_at": "2023-06-16T14:28:34.000000Z",
    "updated_at": "2023-06-29T13:08:22.000000Z",
    "parent_id": 3,
    "section_id": 1,
    "parent": {
      "id": 3,
      "username": "parents",
      "fcm_token": null,
      "phone_number": "+963956124584",
      "created_at": "2023-06-16T14:28:34.000000Z",
      "updated_at": "2023-06-16T14:28:34.000000Z"
    },
    "section": {
      "id": 1,
      "nth_section": 1,
      "grade_id": 1,
      "label": "الشعبة الأول",
      "grade": {
        "id": 1,
        "nth_grade": 1,
        "type": "SCIENTIFIC",
        "label": "الصف الأول العلمي"
      }
    }
  }
*/
// --------------------------

@freezed
class User with _$User {
  const factory User({
    dynamic id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? username,
    String? fcmToken,
    String? createdAt,
    String? updatedAt,
    dynamic parentId,
    dynamic sectionId,
    Parent? parent,
    Section? section,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension UserExtension on User {
  String classSection() {
    String classSection = "";
    if (section != null) {
      if (section!.grade != null && section!.grade!.label != null) {
        classSection = "${section!.grade!.label!} ";
      }
      if (section!.label != null) {
        classSection += section!.label!;
      }
    }
    return classSection;
  }
}
