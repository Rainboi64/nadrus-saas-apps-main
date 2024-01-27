// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customized_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomizedNotification _$$_CustomizedNotificationFromJson(Map json) =>
    _$_CustomizedNotification(
      id: json['id'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      payload: json['payload'] == null
          ? null
          : Payload.fromJson(Map<String, dynamic>.from(json['payload'] as Map)),
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      read_at: json['read_at'] == null
          ? null
          : DateTime.parse(json['read_at'] as String),
    );

Map<String, dynamic> _$$_CustomizedNotificationToJson(
        _$_CustomizedNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'payload': instance.payload?.toJson(),
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'read_at': instance.read_at?.toIso8601String(),
    };
