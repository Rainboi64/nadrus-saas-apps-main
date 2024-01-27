import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/student/student.dart';

class SetStudentsMarksParams {
  MutableLiveData<List<Student>> students = MutableLiveData(value: []);
  MutableLiveData<String> collectionId = MutableLiveData(value: "");
  MutableLiveData<String> examId = MutableLiveData(value: "");
  MutableLiveData<String> deservedScore = MutableLiveData(value: "");
}
