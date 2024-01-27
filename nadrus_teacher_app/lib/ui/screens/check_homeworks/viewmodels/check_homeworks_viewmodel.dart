import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/models/data/student/student.dart';
import 'package:nadrus_teacher_app/repositories/students_repository.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import '../../../../models/responses/base_response/base_response.dart';
import '../../../../repositories/homeworks_repository.dart';
import "check_homeworks_params.dart";

class CheckHomeworksViewModel extends BaseViewModel {
  final _params = Lazy(() => CheckHomeworksParams());
  CheckHomeworksParams get params => _params.value;

  final _studentsRepository = Lazy(() => StudentsRepository());
  StudentsRepository get studentsRepository => _studentsRepository.value;

  final _homeworksRepository = Lazy(() => HomeworksRepository());
  HomeworksRepository get homeworksRepository => _homeworksRepository.value;

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

  Future<void> checkHomework() async {
    baseParams.loading.postValue(true);

    BaseResponse<dynamic> response = await homeworksRepository.checkHomework(
        homeworkId: params.homeworkId.value, students: params.students.value);

    if (response.data != null) {
      //todo
    }
    baseParams.loading.postValue(false);
  }
}
