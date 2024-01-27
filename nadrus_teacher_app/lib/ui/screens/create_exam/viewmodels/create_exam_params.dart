import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/collection/collection.dart';

import '../../../../models/data/lesson/lesson.dart';

class CreateExamParams {
  MutableLiveData<String> sectionId = MutableLiveData(value: "");
  MutableLiveData<bool> isSurpriseExam = MutableLiveData(value: true);

  MutableLiveData<int> selectedMinutesOfExam = MutableLiveData(value: 5);

  MutableLiveData<DateTime> date = MutableLiveData(value: DateTime.now());

  MutableLiveData<List<Lesson>> suggestedLessons = MutableLiveData(value: []);

  MutableLiveData<List<Lesson>> selectedLessons = MutableLiveData(value: []);

  MutableLiveData<List<Collection>> collections = MutableLiveData(value: []);

  MutableLiveData<Collection?> surpriseCollection =
      MutableLiveData(value: null);
  MutableLiveData<Collection?> shortCollection = MutableLiveData(value: null);
}
