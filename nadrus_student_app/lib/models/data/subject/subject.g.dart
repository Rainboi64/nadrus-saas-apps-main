// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subject _$$_SubjectFromJson(Map json) => _$_Subject(
      id: json['id'],
      name: json['name'] as String?,
      iconName: json['icon_name'] as String?,
      pngIcon: json['png_icon'] as String?,
      svgIcon: json['svg_icon'] as String?,
      gradeId: json['grade_id'],
      lessonsCount: json['lessons_count'],
      teacherId: json['teacher_id'],
      seedingId: json['seeding_id'],
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SubjectToJson(_$_Subject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon_name': instance.iconName,
      'png_icon': instance.pngIcon,
      'svg_icon': instance.svgIcon,
      'grade_id': instance.gradeId,
      'lessons_count': instance.lessonsCount,
      'teacher_id': instance.teacherId,
      'seeding_id': instance.seedingId,
      'selected': instance.selected,
    };
