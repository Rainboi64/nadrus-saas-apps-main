import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data_models.dart';

part 'weekly_schedule.freezed.dart';
part 'weekly_schedule.g.dart';

// ----------(json)----------
/*
{
  "SUNDAY": [],
  "MONDAY": [],
  "TUESDAY": [],
  "WEDNESDAY": [],
  "THURSDAY": []
}
*/
// --------------------------

@freezed
class WeeklySchedule with _$WeeklySchedule {
  const factory WeeklySchedule({
    @JsonKey(name: 'SUNDAY', defaultValue: [])
    List<WeeklyScheduleDayItem>? sunday,
    @JsonKey(name: 'MONDAY', defaultValue: [])
    List<WeeklyScheduleDayItem>? monday,
    @JsonKey(name: 'TUESDAY', defaultValue: [])
    List<WeeklyScheduleDayItem>? tuesday,
    @JsonKey(name: 'WEDNESDAY', defaultValue: [])
    List<WeeklyScheduleDayItem>? wednesday,
    @JsonKey(name: 'THURSDAY', defaultValue: [])
    List<WeeklyScheduleDayItem>? thursday,
    @JsonKey(name: 'FRIDAY', defaultValue: [])
    List<WeeklyScheduleDayItem>? friday,
    @JsonKey(name: 'SATURDAY', defaultValue: [])
    List<WeeklyScheduleDayItem>? saturday,
  }) = _WeeklySchedule;

  factory WeeklySchedule.fromJson(Map<String, dynamic> json) =>
      _$WeeklyScheduleFromJson(json);
}
