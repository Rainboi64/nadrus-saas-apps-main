// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Grade _$$_GradeFromJson(Map json) => _$_Grade(
      id: json['id'],
      nthGrade: json['nth_grade'],
      gradeId: json['grade_id'],
      type: json['type'] as String?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$_GradeToJson(_$_Grade instance) => <String, dynamic>{
      'id': instance.id,
      'nth_grade': instance.nthGrade,
      'grade_id': instance.gradeId,
      'type': instance.type,
      'label': instance.label,
    };
