import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/repositories/exams_repository.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import '../../../../models/data/collection/collection.dart';
import '../../../../models/data/student/student.dart';
import '../../../../models/responses/base_response/base_response.dart';
import '../../../../repositories/students_repository.dart';
import '../../../../router/app_router.dart';
import "oral_test_params.dart";

class OralTestViewModel extends BaseViewModel {
  final _params = Lazy(() => OralTestParams());
  OralTestParams get params => _params.value;

  final _studentsRepository = Lazy(() => StudentsRepository());
  StudentsRepository get studentsRepository => _studentsRepository.value;

  final _examsRepository = Lazy(() => ExamsRepository());
  ExamsRepository get examsRepository => _examsRepository.value;

  @override
  void onInit() {
    super.onInit();
    getStudents();
    getExamsCollections();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getStudents() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Student>> response = await studentsRepository.getStudents(
      sectionId: params.sectionId.value.toString(),
    );

    if (response.data != null) {
      if (response.data!.isNotEmpty) {
        params.students.postValue(response.data!);
      }
    }
    baseParams.loading.postValue(false);
  }

  Future<void> getExamsCollections() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Collection>> response =
        await examsRepository.getExamsCollection();

    if (response.data != null) {
      params.collections.postValue(response.data!);
      params.oralExamCollection.postValue(params.collections.value[0]);
      //TODO
      // for (var element in params.collections.value) {
      //   if (element.type != null && element.type!.toLowerCase() == 'oral') {
      //     params.oralExamCollection.postValue(element);
      //   }
      // }
    }
    baseParams.loading.postValue(false);
  }

  Future<void> createExamsCollection() async {
    baseParams.loading.postValue(true);

    BaseResponse<Collection> response =
        await examsRepository.createExamsCollection(
            title: params.oralExamCollection.value?.title ?? "",
            type: params.oralExamCollection.value?.type ?? "",
            selectableByTeachers: true);

    if (response.data != null) {
      params.createdCollection.postValue(response.data);
      appRouter.push(
        SetStudentsMarks(
            examId: params.createdCollection.value?.id.toString() ?? "",
            collectionId: params.oralExamCollection.value?.id.toString() ?? "",
            students: params.selectedStudents.value),
      );
    }
    baseParams.loading.postValue(false);
  }

  //
  // Future<void> createExam() async {
  //   //TODO CREATE EXAM SCHEDULE
  //   baseParams.loading.postValue(true);
  //
  //   BaseResponse<dynamic> response =
  //   await examsRepository.createExams(
  //     collectionId: ,
  //
  //     examCollectionId: ,
  //       sectionId: ,
  //     lessonId: ,
  //     description: ,
  //
  //     title: ,
  //     date: ,
  //     totalScore: ,
  //
  //   );
  //
  //   if (response.data != null) {
  //     params.createdCollection.postValue(response.data);
  //     appRouter.push(
  //       SetStudentsMarks(
  //           examId: params.createdCollection.value?.id.toString() ?? "",
  //           collectionId: params.oralExamCollection.value?.id.toString() ?? "",
  //           students: params.selectedStudents.value),
  //     );
  //   }
  //   baseParams.loading.postValue(false);
  // }
}
