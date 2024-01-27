// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Homework _$$_HomeworkFromJson(Map json) => _$_Homework(
      id: json['id'] as int?,
      classId: json['class_id'] as int?,
      content: json['content'] as String?,
      name: json['name'] as String?,
      deadlineDate: json['deadline_date'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      schoolClass: json['class'] == null
          ? null
          : Class.fromJson(Map<String, dynamic>.from(json['class'] as Map)),
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_HomeworkToJson(_$_Homework instance) =>
    <String, dynamic>{
      'id': instance.id,
      'class_id': instance.classId,
      'content': instance.content,
      'name': instance.name,
      'deadline_date': instance.deadlineDate,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'class': instance.schoolClass?.toJson(),
      'selected': instance.selected,
    };
