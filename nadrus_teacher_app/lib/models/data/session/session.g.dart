// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Session _$$_SessionFromJson(Map json) => _$_Session(
      id: json['id'],
      nthClass: json['nth_class'],
      sectionId: json['section_id'],
      subjectId: json['subject_id'],
      fromTime: json['from_time'] as String?,
      toTime: json['to_time'] as String?,
      isBrake: json['is_brake'],
      day: json['day'] as String?,
      tenantId: json['tenant_id'] as String?,
      done: json['done'],
      nowActive: json['now_active'],
      schoolClass: json['class'] == null
          ? null
          : Class.fromJson(Map<String, dynamic>.from(json['class'] as Map)),
      section: json['section'] == null
          ? null
          : Section.fromJson(Map<String, dynamic>.from(json['section'] as Map)),
    );

Map<String, dynamic> _$$_SessionToJson(_$_Session instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nth_class': instance.nthClass,
      'section_id': instance.sectionId,
      'subject_id': instance.subjectId,
      'from_time': instance.fromTime,
      'to_time': instance.toTime,
      'is_brake': instance.isBrake,
      'day': instance.day,
      'tenant_id': instance.tenantId,
      'done': instance.done,
      'now_active': instance.nowActive,
      'class': instance.schoolClass?.toJson(),
      'section': instance.section?.toJson(),
    };
