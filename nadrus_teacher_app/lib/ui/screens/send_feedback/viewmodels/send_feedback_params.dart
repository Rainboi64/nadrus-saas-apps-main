import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_teacher_app/extensions/live_data_extension.dart';
import 'package:nadrus_teacher_app/models/formz/formz_text.dart';

import '../../../../models/data/student/student.dart';
import '../../../../models/data/teacher_feedback/teacher_feedback.dart';

class SendFeedbackParams {
  final feedbackContent = const FormzText.pure().liveData;

  MutableLiveData<String> sentFeedback = MutableLiveData(value: "");

  MutableLiveData<List<TeacherFeedback>> feedbackContentList =
      MutableLiveData(value: _feedbackContentList);

  MutableLiveData<String> sectionId = MutableLiveData(value: "");

  MutableLiveData<List<Student>> students = MutableLiveData(value: []);

  /// form enabled for submit
  final submit = false.liveData;
}

List<TeacherFeedback> _feedbackContentList = [
  TeacherFeedback(id: 1, content: "messing_during_class", selected: false),
  TeacherFeedback(id: 2, content: "being_late_for_class", selected: false),
  TeacherFeedback(id: 3, content: "fighting_with_others", selected: false),
  TeacherFeedback(id: 4, content: "did_not_study", selected: false),
];
