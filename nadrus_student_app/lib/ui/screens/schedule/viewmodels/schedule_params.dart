import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/weekly_schedule/custom_weekly_schedule.dart';

class ScheduleParams {
  MutableLiveData<int> selectedIndex = MutableLiveData(value: 0);

  MutableLiveData<List<CustomWeeklySchedule>> customWeeklySchedule =
      MutableLiveData(value: []);
}
