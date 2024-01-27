import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

// ----------(json)----------
/*
{
   "id": 1,
    "first_name": "Yahya",
    "last_name": "Housh",
    "username": "yahyahoush",
    "fcm_token": null,
    "global_id": "5pFn",
    "created_at": "2023-06-29T12:59:24.000000Z",
    "updated_at": "2023-06-29T13:00:05.000000Z"
}
*/
// --------------------------

@freezed
class User with _$User {
  const factory User({
    dynamic id,
    String? firstName,
    String? lastName,
    String? username,
    dynamic fcmToken,
    dynamic globalId,
    String? createdAt,
    String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
