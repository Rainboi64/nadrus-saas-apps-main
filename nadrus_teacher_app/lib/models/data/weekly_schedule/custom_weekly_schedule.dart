// ----------(json)----------
/*
{
   "day": "Sunday"
  "subjects": [],
}
*/
// --------------------------

import '../../data_models.dart';

class CustomWeeklySchedule {
  final String day;
  final List<WeeklyScheduleDayItem> subjects;
  bool? isSelected;

  CustomWeeklySchedule(this.day, this.subjects) {
    isSelected = false;
  }
}
