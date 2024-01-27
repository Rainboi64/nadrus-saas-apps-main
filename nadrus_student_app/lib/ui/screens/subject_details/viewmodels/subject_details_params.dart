import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/lesson/lesson.dart';
import 'package:nadrus_student_app/models/data/subject/subject.dart';

class SubjectDetailsParams {
  /// Subject
  MutableLiveData<Subject?> subject = MutableLiveData(value: null);

  /// Subject id
  MutableLiveData<int?> subjectId = MutableLiveData(value: null);

  /// Lesson id
  MutableLiveData<int?> lessonId = MutableLiveData(value: null);

  /// Subject lessons
  MutableLiveData<List<Lesson>> allLessons = MutableLiveData(value: []);
}
