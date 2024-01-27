import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/student/student.dart';

class CheckHomeworksParams {
  MutableLiveData<String> sectionId = MutableLiveData(value: "");

  MutableLiveData<String> homeworkId = MutableLiveData(value: "");

  MutableLiveData<String> previousClassHomework = MutableLiveData(value: "");

  MutableLiveData<List<Student>> students = MutableLiveData(value: []);
}
