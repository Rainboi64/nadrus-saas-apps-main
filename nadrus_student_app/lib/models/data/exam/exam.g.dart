// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exam _$$_ExamFromJson(Map json) => _$_Exam(
      id: json['id'],
      examCollectionId: json['exam_collection_id'],
      sectionId: json['section_id'],
      title: json['title'] as String?,
      description: json['description'] as String?,
      date: json['date'] as String?,
      done: json['done'],
      checked: json['checked'],
      totalScore: json['total_score'],
      classId: json['class_id'],
      subjects: (json['subjects'] as List<dynamic>?)
              ?.map(
                  (e) => Subject.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      scores: (json['scores'] as List<dynamic>?)
              ?.map((e) => Score.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_ExamToJson(_$_Exam instance) => <String, dynamic>{
      'id': instance.id,
      'exam_collection_id': instance.examCollectionId,
      'section_id': instance.sectionId,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
      'done': instance.done,
      'checked': instance.checked,
      'total_score': instance.totalScore,
      'class_id': instance.classId,
      'subjects': instance.subjects.map((e) => e.toJson()).toList(),
      'scores': instance.scores.map((e) => e.toJson()).toList(),
    };
