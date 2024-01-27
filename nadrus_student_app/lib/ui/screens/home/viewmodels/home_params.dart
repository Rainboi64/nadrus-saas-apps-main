import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/homework/homework.dart';
import 'package:nadrus_student_app/models/data/weekly_schedule/weekly_schedule_day_item/weekly_schedule_day_item.dart';
import 'package:nadrus_student_app/models/data/whiteboard/whiteboard.dart';

class HomeParams {
  //Today's Homeworks
  MutableLiveData<List<Homework>> todaysHomeworks = MutableLiveData(value: []);

  //Tomorrow's Subjects
  MutableLiveData<List<WeeklyScheduleDayItem>> tomorrowsSubjects =
      MutableLiveData(value: []);

  //Today's Whiteboard
  MutableLiveData<List<Whiteboard>> whiteBoards = MutableLiveData(value: []);
}
