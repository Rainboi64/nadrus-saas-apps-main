import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/models/data/homework/homework.dart';
import 'package:nadrus_student_app/models/data/weekly_schedule/weekly_schedule_day_item/weekly_schedule_day_item.dart';
import 'package:nadrus_student_app/models/data/whiteboard/whiteboard.dart';
import 'package:nadrus_student_app/repositories/summaries_repository.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../models/responses/base_response/base_response.dart';
import "home_params.dart";

class HomeViewModel extends BaseViewModel {
  final _params = Lazy(() => HomeParams());
  HomeParams get params => _params.value;

  final _summariesRepository = Lazy(() => SummariesRepository());
  SummariesRepository get summariesRepository => _summariesRepository.value;

  @override
  void onInit() {
    super.onInit();
    getTomorrowsSubjects();
    getTodaysHomeworks();
    getWhiteboards();
  }

  @override
  void onDispose() {
    super.onDispose();
  }

  getTodaysHomeworks() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Homework>> response =
        await summariesRepository.getTodaysHomeworks();

    if (response.data != null) {
      if (response.data!.isNotEmpty) {
        params.todaysHomeworks.postValue(response.data!);
      }
    }
    baseParams.loading.postValue(false);
  }

  getTomorrowsSubjects() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<WeeklyScheduleDayItem>> response =
        await summariesRepository.getTomorrowsSubjects();

    if (response.data != null) {
      if (response.data!.isNotEmpty) {
        params.tomorrowsSubjects.postValue(response.data!);
      }
    }
    baseParams.loading.postValue(false);
  }

  getWhiteboards() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Whiteboard>> response =
        await summariesRepository.getWhiteboards();

    if (response.data != null) {
      if (response.data!.isNotEmpty) {
        params.whiteBoards.postValue(response.data!);
      }
    }
    baseParams.loading.postValue(false);
  }
}
