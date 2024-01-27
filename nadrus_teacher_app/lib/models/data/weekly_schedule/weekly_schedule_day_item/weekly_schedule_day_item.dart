import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data_models.dart';

part 'weekly_schedule_day_item.freezed.dart';
part 'weekly_schedule_day_item.g.dart';

// ----------(json)----------
/*
{
        "id": 1873,
        "nth_class": 8,
        "section_id": 1,
        "subject_id": null,
        "from_time": "12:45:00",
        "to_time": "13:30:00",
        "is_brake": 0,
        "day": "THURSDAY",
        "subject": null
}
*/
// --------------------------

@freezed
class WeeklyScheduleDayItem with _$WeeklyScheduleDayItem {
  const factory WeeklyScheduleDayItem({
    int? id,
    int? nthClass,
    int? sectionId,
    int? subjectId,
    String? fromTime,
    String? toTime,
    int? isBrake,
    String? day,
    Subject? subject,
  }) = _WeeklyScheduleDayItem;

  factory WeeklyScheduleDayItem.fromJson(Map<String, dynamic> json) =>
      _$WeeklyScheduleDayItemFromJson(json);
}
