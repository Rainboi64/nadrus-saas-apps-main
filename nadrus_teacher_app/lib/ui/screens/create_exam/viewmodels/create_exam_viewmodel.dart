import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/extensions/date_extension.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import '../../../../models/data/collection/collection.dart';
import '../../../../models/responses/base_response/base_response.dart';
import '../../../../repositories/exams_repository.dart';
import "create_exam_params.dart";

class CreateExamViewModel extends BaseViewModel {
  final _params = Lazy(() => CreateExamParams());
  CreateExamParams get params => _params.value;

  final _examsRepository = Lazy(() => ExamsRepository());
  ExamsRepository get examsRepository => _examsRepository.value;

  @override
  void onInit() {
    super.onInit();
    getExamsCollections();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  Future<void> getExamsCollections() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Collection>> response =
        await examsRepository.getExamsCollection();

    if (response.data != null) {
      params.collections.postValue(response.data!);

      for (var element in params.collections.value) {
        if (element.type != null && element.type!.toLowerCase() == 'surprise') {
          params.surpriseCollection.postValue(element);
        }
        if (element.type != null && element.type!.toLowerCase() == 'short') {
          params.shortCollection.postValue(element);
        }
      }
    }
    baseParams.loading.postValue(false);
  }

  Future<void> createExam() async {
    baseParams.loading.postValue(true);

    /// Getting the exam collection id  and date based on exam type
    Collection? collection;
    String examCollectionId;
    String date = "";

    if (params.isSurpriseExam.value == true) {
      collection = params.surpriseCollection.value;
      date = DateTime.now().formatDate();
    } else {
      collection = params.shortCollection.value;
      date = params.date.value.formatDate();
    }

    if (collection == null) {
      examCollectionId = "1";
    } else {
      if (collection.id != null) {
        examCollectionId = collection.id.toString();
      } else {
        examCollectionId = "1";
      }
    }

    ///Get the lessons ids list
    List<int> lessonsIds = [];
    for (var element in params.selectedLessons.value) {
      lessonsIds.add(int.parse(element.id.toString()));
    }

    BaseResponse<dynamic> response = await examsRepository.createExams(
      collectionId: examCollectionId,
      examCollectionId: examCollectionId,
      sectionId: params.sectionId.value,
      lessonsIds: lessonsIds,
      description: "description",
      title: "title",
      date: date,
      totalScore: "100",
    );

    if (response.data != null) {}
    baseParams.loading.postValue(false);
  }
}
