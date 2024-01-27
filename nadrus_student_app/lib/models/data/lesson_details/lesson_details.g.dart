// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lesson _$$_LessonFromJson(Map json) => _$_Lesson(
      details: (json['details'] as List<dynamic>?)
              ?.map(
                  (e) => Details.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      exams: (json['exams'] as List<dynamic>?)
              ?.map((e) => Exam.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_LessonToJson(_$_Lesson instance) => <String, dynamic>{
      'details': instance.details.map((e) => e.toJson()).toList(),
      'exams': instance.exams.map((e) => e.toJson()).toList(),
    };
