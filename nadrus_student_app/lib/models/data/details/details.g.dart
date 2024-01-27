// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lesson _$$_LessonFromJson(Map json) => _$_Lesson(
      id: json['id'],
      teacherId: json['teacher_id'],
      lessonId: json['lesson_id'],
      weeklyScheduleId: json['weekly_schedule_id'],
      completionRate: json['completion_rate'] as String?,
      date: json['date'] as String?,
      lesson: json['lesson'] == null
          ? null
          : Lesson.fromJson(Map<String, dynamic>.from(json['lesson'] as Map)),
      whiteboards: (json['whiteboards'] as List<dynamic>?)
              ?.map((e) =>
                  Whiteboard.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      homeworks: (json['homeworks'] as List<dynamic>?)
              ?.map(
                  (e) => Homework.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      exams: (json['exams'] as List<dynamic>?)
              ?.map((e) => Exam.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_LessonToJson(_$_Lesson instance) => <String, dynamic>{
      'id': instance.id,
      'teacher_id': instance.teacherId,
      'lesson_id': instance.lessonId,
      'weekly_schedule_id': instance.weeklyScheduleId,
      'completion_rate': instance.completionRate,
      'date': instance.date,
      'lesson': instance.lesson?.toJson(),
      'whiteboards': instance.whiteboards.map((e) => e.toJson()).toList(),
      'homeworks': instance.homeworks.map((e) => e.toJson()).toList(),
      'exams': instance.exams.map((e) => e.toJson()).toList(),
    };
