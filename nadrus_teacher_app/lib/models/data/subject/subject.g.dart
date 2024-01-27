// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subject _$$_SubjectFromJson(Map json) => _$_Subject(
      id: json['id'] as int?,
      name: json['name'] as String?,
      iconName: json['icon_name'] as String?,
      pngIcon: json['png_icon'] as String?,
      svgIcon: json['svg_icon'] as String?,
      gradeId: json['grade_id'] as int?,
      teacherId: json['teacher_id'] as int?,
    );

Map<String, dynamic> _$$_SubjectToJson(_$_Subject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon_name': instance.iconName,
      'png_icon': instance.pngIcon,
      'svg_icon': instance.svgIcon,
      'grade_id': instance.gradeId,
      'teacher_id': instance.teacherId,
    };
