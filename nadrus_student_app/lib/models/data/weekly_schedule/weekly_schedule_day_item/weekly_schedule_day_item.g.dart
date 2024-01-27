// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_schedule_day_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeeklyScheduleDayItem _$$_WeeklyScheduleDayItemFromJson(Map json) =>
    _$_WeeklyScheduleDayItem(
      id: json['id'] as int?,
      nthClass: json['nth_class'] as int?,
      sectionId: json['section_id'] as int?,
      subjectId: json['subject_id'] as int?,
      fromTime: json['from_time'] as String?,
      toTime: json['to_time'] as String?,
      isBrake: json['is_brake'] as int?,
      day: json['day'] as String?,
      subject: json['subject'] == null
          ? null
          : Subject.fromJson(Map<String, dynamic>.from(json['subject'] as Map)),
    );

Map<String, dynamic> _$$_WeeklyScheduleDayItemToJson(
        _$_WeeklyScheduleDayItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nth_class': instance.nthClass,
      'section_id': instance.sectionId,
      'subject_id': instance.subjectId,
      'from_time': instance.fromTime,
      'to_time': instance.toTime,
      'is_brake': instance.isBrake,
      'day': instance.day,
      'subject': instance.subject?.toJson(),
    };
