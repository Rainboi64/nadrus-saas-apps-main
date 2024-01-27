import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/models/data/student/student.dart';
import 'package:nadrus_teacher_app/router/app_router.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import '../../../../models/responses/base_response/base_response.dart';
import '../../../../repositories/exams_repository.dart';
import "set_students_marks_params.dart";

class SetStudentsMarksViewModel extends BaseViewModel {
  final _params = Lazy(() => SetStudentsMarksParams());
  SetStudentsMarksParams get params => _params.value;

  final _examsRepository = Lazy(() => ExamsRepository());
  ExamsRepository get examsRepository => _examsRepository.value;

  @override
  void onInit() {
    super.onInit();
    // called immediately after the widget is allocated in memory.
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  setMark(Student student, String deservedScore) async {
    baseParams.loading.postValue(true);

    BaseResponse<dynamic> response = await examsRepository.setScore(
        collectionId: params.collectionId.value,
        examId: params.examId.value,
        studentId: student.id.toString(),
        deservedScore: deservedScore);

    if (response.data != null) {
      appRouter.pop();
    }

    baseParams.loading.postValue(false);
  }
}
