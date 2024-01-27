import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/models/data/lesson/lesson.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../models/data/lesson_details/lesson_details.dart';
import '../../../../models/responses/base_response/base_response.dart';
import '../../../../repositories/subjects_repository.dart';
import "subject_details_params.dart";

class SubjectDetailsViewModel extends BaseViewModel {
  final _params = Lazy(() => SubjectDetailsParams());
  SubjectDetailsParams get params => _params.value;

  final _subjectsRepository = Lazy(() => SubjectsRepository());
  SubjectsRepository get subjectsRepository => _subjectsRepository.value;

  @override
  void onInit() {
    super.onInit();
    getSubjectLessons();
    // called immediately after the widget is allocated in memory.
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getSubjectLessons() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Lesson>> response =
        await subjectsRepository.getSubjectsLessons(id: params.subjectId.value);

    if (response.data != null) {
      params.allLessons.postValue(response.data!);
    }

    baseParams.loading.postValue(false);
  }

  Future<LessonDetails?> getLessonDetails(int lessonId) async {
    baseParams.loading.postValue(true);
    params.lessonId.postValue(lessonId);

    if (params.lessonId.value != null && params.subjectId.value != null) {
      BaseResponse<LessonDetails?> response =
          await subjectsRepository.getLessonDetails(
              lessonId: params.lessonId.value!,
              subjectId: params.subjectId.value!);
      baseParams.loading.postValue(false);

      if (response.data != null) {
        return response.data!;
      }
    }
    baseParams.loading.postValue(false);
    return null;
  }
}
