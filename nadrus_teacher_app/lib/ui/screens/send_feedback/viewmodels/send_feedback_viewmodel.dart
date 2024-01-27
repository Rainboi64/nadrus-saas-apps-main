import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/repositories/feedback_repository.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import '../../../../models/data/student/student.dart';
import '../../../../models/formz/formz_text.dart';
import '../../../../models/responses/base_response/base_response.dart';
import '../../../../repositories/students_repository.dart';
import "send_feedback_params.dart";

class SendFeedbackViewModel extends BaseViewModel {
  final _params = Lazy(() => SendFeedbackParams());
  SendFeedbackParams get params => _params.value;

  final _studentsRepository = Lazy(() => StudentsRepository());
  StudentsRepository get studentsRepository => _studentsRepository.value;

  final _feedbackRepository = Lazy(() => FeedbackRepository());
  FeedbackRepository get feedbackRepository => _feedbackRepository.value;

  @override
  void onInit() {
    super.onInit();
    getStudents();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  void attrChanged(MutableLiveData<FormzText> attr, String value) {
    FormzText newValue = FormzText.dirty(value);
    attr.postValue(newValue);
    params.submit.postValue(attr.value.valid);
  }

  getStudents() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Student>> response = await studentsRepository.getStudents(
        sectionId: params.sectionId.value.toString());

    if (response.data != null) {
      if (response.data!.isNotEmpty) {
        params.students.postValue(response.data!);
      }
    }
    baseParams.loading.postValue(false);
  }

  sendFeedbackToParents(String studentId, String content) async {
    baseParams.loading.postValue(true);

    BaseResponse<dynamic> response = await feedbackRepository
        .sendFeedbackToParents(studentId: studentId, content: content);

    if (response.data != null) {}
    baseParams.loading.postValue(false);
  }

  sendForAllStudents() {
    String feedback = params.feedbackContent.value.value;
    if (params.sentFeedback.value.isNotEmpty) {
      if (feedback.isNotEmpty) {
        feedback += ", ${params.sentFeedback.value}";
      } else {
        feedback += params.sentFeedback.value;
      }
    }

    for (var element in params.students.value) {
      if (element.selected) {
        sendFeedbackToParents(
          element.id.toString(),
          feedback,
        );
      }
    }
  }
}
