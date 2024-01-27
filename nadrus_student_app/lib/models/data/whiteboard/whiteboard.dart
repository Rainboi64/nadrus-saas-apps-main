import 'package:freezed_annotation/freezed_annotation.dart';

import '../class/class.dart';

part 'whiteboard.freezed.dart';
part 'whiteboard.g.dart';

// ----------(json)----------
/*
 {
      "id": 1,
      "class_id": 3,
      "image_path": "whiteboard/3/1689773668.png",
      "class": {  "lesson": {} }
        }
      }
}
*/
// --------------------------

@freezed
class Whiteboard with _$Whiteboard {
  const factory Whiteboard({
    dynamic id,
    dynamic classId,
    String? imagePath,
    @JsonKey(name: "class") Class? schoolClass,
  }) = _Whiteboard;

  factory Whiteboard.fromJson(Map<String, dynamic> json) =>
      _$WhiteboardFromJson(json);
}

extension WhiteboardExtension on Whiteboard {
  bool subjectNotNull() =>
      schoolClass != null &&
      schoolClass!.lesson != null &&
      schoolClass!.lesson!.unit != null &&
      schoolClass!.lesson!.unit!.subject!.name != null;
  String subjectName() => schoolClass!.lesson!.unit!.subject!.name!;

  bool lessonNotNull() =>
      schoolClass != null &&
      schoolClass!.lesson != null &&
      schoolClass!.lesson!.name != null;
  String lessonName() => schoolClass!.lesson!.name!;
}
