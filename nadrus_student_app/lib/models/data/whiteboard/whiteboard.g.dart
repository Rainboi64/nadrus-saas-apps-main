// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whiteboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Whiteboard _$$_WhiteboardFromJson(Map json) => _$_Whiteboard(
      id: json['id'],
      classId: json['class_id'],
      imagePath: json['image_path'] as String?,
      schoolClass: json['class'] == null
          ? null
          : Class.fromJson(Map<String, dynamic>.from(json['class'] as Map)),
    );

Map<String, dynamic> _$$_WhiteboardToJson(_$_Whiteboard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'class_id': instance.classId,
      'image_path': instance.imagePath,
      'class': instance.schoolClass?.toJson(),
    };
