import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/extensions/date_extension.dart';
import 'package:nadrus_student_app/models/data/homework/homework.dart';
import 'package:nadrus_student_app/repositories/homeworks_repository.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../models/data/homework_status/homework_statuses.dart';
import '../../../../models/responses/base_response/base_response.dart';
import "homeworks_params.dart";

class HomeworksViewModel extends BaseViewModel {
  final _params = Lazy(() => HomeworksParams());
  HomeworksParams get params => _params.value;

  final _homeworksRepository = Lazy(() => HomeworksRepository());
  HomeworksRepository get homeworksRepository => _homeworksRepository.value;

  @override
  void onInit() {
    super.onInit();
    getAllHomeworks();
    //baseParams.loading.postValue(false);
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getAllHomeworks({DateTime? date, bool refresh = false}) async {
    baseParams.loading.postValue(true);
    if (date != null) {
      if (date.formatDate() == params.date.value.formatDate() &&
          refresh == false) {
        baseParams.loading.postValue(false);
        return;
      }
      params.date.postValue(date);
    }

    BaseResponse<List<Homework>> response = await homeworksRepository
        .getHomeworks(date: params.date.value.formatDate());

    if (response.data != null) {
      params.allHomeworks.postValue(response.data!.toList());
    }
    baseParams.loading.postValue(false);
  }

  solveHomework(String homeworkId, bool isDone) async {
    baseParams.loading.postValue(true);

    BaseResponse<Homework> response = await homeworksRepository.solveHomework(
        homeworkId: homeworkId, isDone: isDone);

    if (response.data != null) {
      if (response.data!.status != null) {
        // getAllHomeworks(date: params.date.value, refresh: true);
        markHomeworkAsSolved(homeworkId, isDone);
      }
    }
    baseParams.loading.postValue(false);
  }

  markHomeworkAsSolved(String homeworkId, bool isDone) {
    List<Homework> temp = [];
    List<HomeworkStatuses> homeworkStatuses = [];

    HomeworkStatuses homeworkStatus = const HomeworkStatuses(
        id: null, homeworkId: null, studentId: null, done: 1);

    if (isDone) homeworkStatuses.add(homeworkStatus);

    for (var element in params.allHomeworks.value) {
      if (element.id.toString() == homeworkId) {
        temp.add(element.copyWith(homeworkStatuses: homeworkStatuses));
      } else {
        temp.add(element);
      }
    }
    params.allHomeworks.postValue(temp);
  }
}
