// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_School _$$_SchoolFromJson(Map json) => _$_School(
      tenant: json['tenant'] as String?,
      grade: json['grade'] == null
          ? null
          : Grade.fromJson(Map<String, dynamic>.from(json['grade'] as Map)),
      type: json['type'] as String?,
      sections: (json['sections'] as List<dynamic>?)
              ?.map(
                  (e) => Section.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_SchoolToJson(_$_School instance) => <String, dynamic>{
      'tenant': instance.tenant,
      'grade': instance.grade?.toJson(),
      'type': instance.type,
      'sections': instance.sections.map((e) => e.toJson()).toList(),
    };
