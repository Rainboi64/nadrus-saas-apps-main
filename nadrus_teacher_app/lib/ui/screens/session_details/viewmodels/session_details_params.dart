import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/models/data/class/class.dart';
import 'package:nadrus_teacher_app/models/data/class_details/class_details.dart';
import 'package:nadrus_teacher_app/models/data/homework/homework.dart';
import 'package:nadrus_teacher_app/models/data/lesson/lesson.dart';
import 'package:nadrus_teacher_app/models/data/session/session.dart';

class SessionDetailsParams {
  MutableLiveData<Session?> session = MutableLiveData(value: null);

  MutableLiveData<List<Homework>> selectedHomeworks =
      MutableLiveData(value: []);

  MutableLiveData<Lesson?> selectedLesson = MutableLiveData(value: null);

  MutableLiveData<double?> selectedCompletionRate =
      MutableLiveData(value: null);

  MutableLiveData<ClassDetails?> classDetails = MutableLiveData(value: null);

  MutableLiveData<String?> imagePath = MutableLiveData(value: null);

  MutableLiveData<bool?> imageUploadedSuccessfully =
      MutableLiveData(value: null);

  MutableLiveData<bool> editCurrentLesson = MutableLiveData(value: false);
  MutableLiveData<bool> editCompletionRate = MutableLiveData(value: false);
  MutableLiveData<bool> editNextLessonHomeworks = MutableLiveData(value: false);

  MutableLiveData<Class?> prevClass = MutableLiveData(value: null);
}
