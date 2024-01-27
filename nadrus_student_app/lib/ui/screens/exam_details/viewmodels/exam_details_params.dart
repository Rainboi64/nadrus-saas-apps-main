import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/exam_collection/exam_collection.dart';
import 'package:nadrus_student_app/models/data/subject/subject.dart';

import '../../../../models/data/exam/exam.dart';

class ExamDetailsParams {
  MutableLiveData<int> selectedIndex = MutableLiveData(value: 0);

  MutableLiveData<ExamCollection?> examCollection =
      MutableLiveData(value: null);

  MutableLiveData<List<Exam>> allExams = MutableLiveData(value: []);

  MutableLiveData<List<Subject>> allSubjects = MutableLiveData(value: []);
}
