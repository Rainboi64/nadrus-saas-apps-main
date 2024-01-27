// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExamCollection _$$_ExamCollectionFromJson(Map json) => _$_ExamCollection(
      id: json['id'],
      title: json['title'] as String?,
      isActive: json['is_active'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      selectableByTeachers: json['selectable_by_teachers'],
    );

Map<String, dynamic> _$$_ExamCollectionToJson(_$_ExamCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'selectable_by_teachers': instance.selectableByTeachers,
    };
