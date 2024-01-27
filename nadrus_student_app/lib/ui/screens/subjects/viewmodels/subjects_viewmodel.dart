import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/models/data_models.dart';
import 'package:nadrus_student_app/repositories/subjects_repository.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../models/responses/base_response/base_response.dart';
import "subjects_params.dart";

class SubjectsViewModel extends BaseViewModel {
  final _params = Lazy(() => SubjectsParams());
  SubjectsParams get params => _params.value;

  final _subjectsRepository = Lazy(() => SubjectsRepository());
  SubjectsRepository get subjectsRepository => _subjectsRepository.value;

  @override
  void onInit() {
    super.onInit();
    getAllSubjects();
    // called immediately after the widget is allocated in memory.
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getAllSubjects() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Subject>> response =
        await subjectsRepository.getSubjects();

    if (response.data != null) {
      params.allSubjects.postValue(response.data!);
    }

    baseParams.loading.postValue(false);
  }
}
