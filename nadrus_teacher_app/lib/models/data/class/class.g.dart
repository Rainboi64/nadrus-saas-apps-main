// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Class _$$_ClassFromJson(Map json) => _$_Class(
      id: json['id'],
      teacherId: json['teacher_id'],
      lessonId: json['lesson_id'],
      weeklyScheduleId: json['weekly_schedule_id'],
      completionRate: json['completion_rate'] as String?,
      date: json['date'] as String?,
      lesson: json['lesson'] == null
          ? null
          : Lesson.fromJson(Map<String, dynamic>.from(json['lesson'] as Map)),
      homeworks: (json['homeworks'] as List<dynamic>?)
              ?.map(
                  (e) => Homework.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_ClassToJson(_$_Class instance) => <String, dynamic>{
      'id': instance.id,
      'teacher_id': instance.teacherId,
      'lesson_id': instance.lessonId,
      'weekly_schedule_id': instance.weeklyScheduleId,
      'completion_rate': instance.completionRate,
      'date': instance.date,
      'lesson': instance.lesson?.toJson(),
      'homeworks': instance.homeworks.map((e) => e.toJson()).toList(),
    };
