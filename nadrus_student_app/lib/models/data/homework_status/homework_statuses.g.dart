// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework_statuses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeworkStatuses _$$_HomeworkStatusesFromJson(Map json) =>
    _$_HomeworkStatuses(
      id: json['id'],
      homeworkId: json['homework_id'],
      studentId: json['student_id'],
      done: json['done'],
    );

Map<String, dynamic> _$$_HomeworkStatusesToJson(_$_HomeworkStatuses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'homework_id': instance.homeworkId,
      'student_id': instance.studentId,
      'done': instance.done,
    };
