// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Unit _$$_UnitFromJson(Map json) => _$_Unit(
      id: json['id'] as int?,
      nthUnit: json['nth_unit'] as int?,
      title: json['title'] as String?,
      subjectId: json['subject_id'] as int?,
      subject: json['subject'] == null
          ? null
          : Subject.fromJson(Map<String, dynamic>.from(json['subject'] as Map)),
    );

Map<String, dynamic> _$$_UnitToJson(_$_Unit instance) => <String, dynamic>{
      'id': instance.id,
      'nth_unit': instance.nthUnit,
      'title': instance.title,
      'subject_id': instance.subjectId,
      'subject': instance.subject?.toJson(),
    };
