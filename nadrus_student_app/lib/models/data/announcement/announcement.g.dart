// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Announcement _$$_AnnouncementFromJson(Map json) => _$_Announcement(
      id: json['id'],
      title: json['title'] as String?,
      description: json['description'] as String?,
      menu: json['menu'],
      expiresAt: json['expires_at'] as String?,
      sectionId: json['section_id'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      imagePath: json['image_path'],
    );

Map<String, dynamic> _$$_AnnouncementToJson(_$_Announcement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'menu': instance.menu,
      'expires_at': instance.expiresAt,
      'section_id': instance.sectionId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'image_path': instance.imagePath,
    };
