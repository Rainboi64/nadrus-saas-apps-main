import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../models/data/exam/exam.dart';
import '../../../../models/data/subject/subject.dart';
import '../../../../models/responses/base_response/base_response.dart';
import '../../../../repositories/exams_repository.dart';
import '../../../../repositories/subjects_repository.dart';
import "exam_details_params.dart";

class ExamDetailsViewModel extends BaseViewModel {
  final _params = Lazy(() => ExamDetailsParams());
  ExamDetailsParams get params => _params.value;

  final _examsRepository = Lazy(() => ExamsRepository());
  ExamsRepository get examsRepository => _examsRepository.value;

  final _subjectsRepository = Lazy(() => SubjectsRepository());
  SubjectsRepository get subjectsRepository => _subjectsRepository.value;

  @override
  void onInit() {
    super.onInit();
    getAllSubjects();
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
      if (response.data!.isNotEmpty) {
        changeIndex(int.parse(response.data![0]!.id.toString()));
      }
    }

    baseParams.loading.postValue(false);
  }

  getExams(String? subjectId) async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Exam>> response = await examsRepository.getExam(
        collectionId: params.examCollection.value!.id.toString(),
        studentId: subjectId);

    if (response.data != null) {
      params.allExams.postValue(response.data!);
    }

    baseParams.loading.postValue(false);
  }

  changeIndex(int index) {
    List<Subject> temp = [];
    String? subjectId;
    if (params.allSubjects.value.length > 1) {
      for (int i = 0; i < params.allSubjects.value.length; i++) {
        if (i == index) {
          temp.add(params.allSubjects.value[index].copyWith(selected: true));
          subjectId = params.allSubjects.value[index].id.toString();
        } else {
          temp.add(params.allSubjects.value[index].copyWith(selected: false));
        }
      }
    } else {
      temp.add(params.allSubjects.value[0].copyWith(selected: true));
    }
    params.selectedIndex.postValue(index);
    params.allSubjects.postValue(temp);
    getExams(subjectId);
  }
}
