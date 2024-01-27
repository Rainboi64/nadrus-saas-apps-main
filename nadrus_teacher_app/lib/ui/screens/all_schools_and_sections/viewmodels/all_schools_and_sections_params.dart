import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/school/school.dart';

class AllSchoolsAndSectionsParams {
  //Teacher's Schools
  MutableLiveData<List<School>> teachersSchools = MutableLiveData(value: []);
}
