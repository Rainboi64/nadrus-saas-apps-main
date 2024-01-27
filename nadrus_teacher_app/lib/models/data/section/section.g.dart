// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Section _$$_SectionFromJson(Map json) => _$_Section(
      id: json['id'],
      nthSection: json['nth_section'],
      gradeId: json['grade_id'],
      label: json['label'] as String?,
      grade: json['grade'] == null
          ? null
          : Grade.fromJson(Map<String, dynamic>.from(json['grade'] as Map)),
    );

Map<String, dynamic> _$$_SectionToJson(_$_Section instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nth_section': instance.nthSection,
      'grade_id': instance.gradeId,
      'label': instance.label,
      'grade': instance.grade?.toJson(),
    };
