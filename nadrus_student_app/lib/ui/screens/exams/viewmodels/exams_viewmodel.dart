import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/models/data/exam_collection/exam_collection.dart';
import 'package:nadrus_student_app/repositories/exams_repository.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../models/responses/base_response/base_response.dart';
import "exams_params.dart";

class ExamsViewModel extends BaseViewModel {
  final _params = Lazy(() => ExamsParams());
  ExamsParams get params => _params.value;

  final _examsRepository = Lazy(() => ExamsRepository());
  ExamsRepository get examsRepository => _examsRepository.value;

  @override
  void onInit() {
    super.onInit();
    getExams();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getExams() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<ExamCollection>> response =
        await examsRepository.getAllExams();

    if (response.data != null) {
      params.allExamCollection.postValue(response.data!);
    }

    baseParams.loading.postValue(false);
  }
}
