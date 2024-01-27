import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/collection/collection.dart';

import '../../../../models/data/student/student.dart';

class OralTestParams {
  MutableLiveData<String> sectionId = MutableLiveData(value: "");
  MutableLiveData<String> homeworkId = MutableLiveData(value: "");
  MutableLiveData<String> previousClassHomework = MutableLiveData(value: "");

  MutableLiveData<List<Student>> students = MutableLiveData(value: []);
  MutableLiveData<List<Student>> selectedStudents = MutableLiveData(value: []);

  MutableLiveData<List<Collection>> collections = MutableLiveData(value: []);
  MutableLiveData<Collection?> oralExamCollection =
      MutableLiveData(value: null);

  MutableLiveData<Collection?> createdCollection = MutableLiveData(value: null);
}
