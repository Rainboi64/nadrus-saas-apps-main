// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeeklySchedule _$$_WeeklyScheduleFromJson(Map json) => _$_WeeklySchedule(
      sunday: (json['SUNDAY'] as List<dynamic>?)
              ?.map((e) => WeeklyScheduleDayItem.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      monday: (json['MONDAY'] as List<dynamic>?)
              ?.map((e) => WeeklyScheduleDayItem.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      tuesday: (json['TUESDAY'] as List<dynamic>?)
              ?.map((e) => WeeklyScheduleDayItem.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      wednesday: (json['WEDNESDAY'] as List<dynamic>?)
              ?.map((e) => WeeklyScheduleDayItem.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      thursday: (json['THURSDAY'] as List<dynamic>?)
              ?.map((e) => WeeklyScheduleDayItem.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      friday: (json['FRIDAY'] as List<dynamic>?)
              ?.map((e) => WeeklyScheduleDayItem.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      saturday: (json['SATURDAY'] as List<dynamic>?)
              ?.map((e) => WeeklyScheduleDayItem.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_WeeklyScheduleToJson(_$_WeeklySchedule instance) =>
    <String, dynamic>{
      'SUNDAY': instance.sunday?.map((e) => e.toJson()).toList(),
      'MONDAY': instance.monday?.map((e) => e.toJson()).toList(),
      'TUESDAY': instance.tuesday?.map((e) => e.toJson()).toList(),
      'WEDNESDAY': instance.wednesday?.map((e) => e.toJson()).toList(),
      'THURSDAY': instance.thursday?.map((e) => e.toJson()).toList(),
      'FRIDAY': instance.friday?.map((e) => e.toJson()).toList(),
      'SATURDAY': instance.saturday?.map((e) => e.toJson()).toList(),
    };
