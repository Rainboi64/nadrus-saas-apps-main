// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lesson _$$_LessonFromJson(Map json) => _$_Lesson(
      id: json['id'],
      name: json['name'] as String?,
      description: json['description'] as String?,
      order: json['order'],
      unitId: json['unit_id'],
      unit: json['unit'] == null
          ? null
          : Unit.fromJson(Map<String, dynamic>.from(json['unit'] as Map)),
      totalCompletionRate: json['total_completion_rate'] as String?,
    );

Map<String, dynamic> _$$_LessonToJson(_$_Lesson instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'order': instance.order,
      'unit_id': instance.unitId,
      'unit': instance.unit?.toJson(),
      'total_completion_rate': instance.totalCompletionRate,
    };
