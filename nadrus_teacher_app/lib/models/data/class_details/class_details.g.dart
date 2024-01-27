// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassDetails _$$_ClassDetailsFromJson(Map json) => _$_ClassDetails(
      currentClass: json['current_class'] == null
          ? null
          : Class.fromJson(
              Map<String, dynamic>.from(json['current_class'] as Map)),
      previousClass: json['previous_class'] == null
          ? null
          : Class.fromJson(
              Map<String, dynamic>.from(json['previous_class'] as Map)),
      nextLessonSuggestions: (json['next_lesson_suggestions'] as List<dynamic>?)
              ?.map((e) => Lesson.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      homeworksSuggestions: (json['homeworks_suggestions'] as List<dynamic>?)
              ?.map(
                  (e) => Homework.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_ClassDetailsToJson(_$_ClassDetails instance) =>
    <String, dynamic>{
      'current_class': instance.currentClass?.toJson(),
      'previous_class': instance.previousClass?.toJson(),
      'next_lesson_suggestions':
          instance.nextLessonSuggestions.map((e) => e.toJson()).toList(),
      'homeworks_suggestions':
          instance.homeworksSuggestions.map((e) => e.toJson()).toList(),
    };
