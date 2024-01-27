import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/homework/homework.dart';

class HomeworksParams {
  //Date filter
  MutableLiveData<DateTime> date = MutableLiveData(value: DateTime.now());
  //Homeworks
  MutableLiveData<List<Homework>> allHomeworks = MutableLiveData(value: []);
}
