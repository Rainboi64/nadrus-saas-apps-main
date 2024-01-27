// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lesson _$$_LessonFromJson(Map json) => _$_Lesson(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      unitId: json['unit_id'] as int?,
      unit: json['unit'] == null
          ? null
          : Unit.fromJson(Map<String, dynamic>.from(json['unit'] as Map)),
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LessonToJson(_$_Lesson instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'order': instance.order,
      'unit_id': instance.unitId,
      'unit': instance.unit?.toJson(),
      'selected': instance.selected,
    };
