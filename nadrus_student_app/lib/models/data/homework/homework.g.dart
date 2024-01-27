// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Homework _$$_HomeworkFromJson(Map json) => _$_Homework(
      id: json['id'],
      classId: json['class_id'],
      content: json['content'] as String?,
      deadlineDate: json['deadline_date'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      checked: json['checked'],
      homeworkStatuses: (json['homework_statuses'] as List<dynamic>?)
              ?.map((e) => HomeworkStatuses.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      schoolClass: json['class'] == null
          ? null
          : Class.fromJson(Map<String, dynamic>.from(json['class'] as Map)),
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$$_HomeworkToJson(_$_Homework instance) =>
    <String, dynamic>{
      'id': instance.id,
      'class_id': instance.classId,
      'content': instance.content,
      'deadline_date': instance.deadlineDate,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'checked': instance.checked,
      'homework_statuses':
          instance.homeworkStatuses.map((e) => e.toJson()).toList(),
      'class': instance.schoolClass?.toJson(),
      'status': instance.status,
    };
