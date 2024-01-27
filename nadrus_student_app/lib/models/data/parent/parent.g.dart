// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Parent _$$_ParentFromJson(Map json) => _$_Parent(
      id: json['id'],
      username: json['username'] as String?,
      fcmToken: json['fcm_token'] as String?,
      phoneNumber: json['phone_number'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_ParentToJson(_$_Parent instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fcm_token': instance.fcmToken,
      'phone_number': instance.phoneNumber,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
