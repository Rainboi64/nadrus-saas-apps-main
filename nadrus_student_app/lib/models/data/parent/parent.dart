import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent.freezed.dart';
part 'parent.g.dart';

// ----------(json)----------
/*
{
      "id": 3,
      "username": "parents",
      "fcm_token": null,
      "phone_number": "+963956124584",
      "created_at": "2023-06-16T14:28:34.000000Z",
      "updated_at": "2023-06-16T14:28:34.000000Z"
}
*/
// --------------------------

@freezed
class Parent with _$Parent {
  const factory Parent({
    dynamic id,
    String? username,
    String? fcmToken,
    String? phoneNumber,
    String? createdAt,
    String? updatedAt,
  }) = _Parent;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
}
