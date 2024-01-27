import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data_models.dart';

class SubjectsParams {
  MutableLiveData<List<Subject>> allSubjects = MutableLiveData(value: []);
}
