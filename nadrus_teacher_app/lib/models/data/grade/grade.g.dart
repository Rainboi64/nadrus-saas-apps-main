// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Grade _$$_GradeFromJson(Map json) => _$_Grade(
      id: json['id'],
      nthGrade: json['nth_grade'],
      type: json['type'] as String?,
      label: json['label'] as String?,
      sections: (json['sections'] as List<dynamic>?)
              ?.map(
                  (e) => Section.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_GradeToJson(_$_Grade instance) => <String, dynamic>{
      'id': instance.id,
      'nth_grade': instance.nthGrade,
      'type': instance.type,
      'label': instance.label,
      'sections': instance.sections.map((e) => e.toJson()).toList(),
    };
