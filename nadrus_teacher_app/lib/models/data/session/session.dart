import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data_models.dart';
import '../section/section.dart';

part 'session.freezed.dart';
part 'session.g.dart';

// ----------(json)----------
/*
 {
      "id": 1345,
      "nth_Session": 1,
      "section_id": 1,
      "subject_id": 4,
      "from_time": "07:45:00",
      "to_time": "08:30:00",
      "is_brake": 0,
      "day": "THURSDAY",
      "tenant_id": "alawael",
      "done": 1,
      "now_active": 0,
      "class": null,
      "section": {}
    }
*/
// --------------------------

@freezed
class Session with _$Session {
  const factory Session({
    dynamic id,
    dynamic nthClass,
    dynamic sectionId,
    dynamic subjectId,
    String? fromTime,
    String? toTime,
    dynamic isBrake,
    String? day,
    String? tenantId,
    dynamic done,
    dynamic nowActive,
    @JsonKey(name: "class") Class? schoolClass,
    Section? section,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

extension SessionExtension on Session {
  String sessionTitle() {
    if (section != null &&
        section!.grade != null &&
        section!.grade!.label != null &&
        section!.label != null) {
      return "${"${nthClass}_class".tr()}\n${section!.grade!.label!}/${section!.label!}\n${tenantId}";
    }
    return "";
  }
}
