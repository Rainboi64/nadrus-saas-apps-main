import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/models/data/weekly_schedule/weekly_schedule.dart';
import 'package:nadrus_student_app/repositories/weekly_schedule_repository.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../models/data/weekly_schedule/custom_weekly_schedule.dart';
import '../../../../models/responses/base_response/base_response.dart';
import "schedule_params.dart";

class ScheduleViewModel extends BaseViewModel {
  final _params = Lazy(() => ScheduleParams());
  ScheduleParams get params => _params.value;

  final _weeklyScheduleRepository = Lazy(() => WeeklyScheduleRepository());
  WeeklyScheduleRepository get weeklyScheduleRepository =>
      _weeklyScheduleRepository.value;

  @override
  void onInit() {
    super.onInit();
    // called immediately after the widget is allocated in memory.
    getWeeklySchedule();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getWeeklySchedule() async {
    baseParams.loading.postValue(true);

    BaseResponse<WeeklySchedule> response =
        await weeklyScheduleRepository.getWeeklySchedule();

    if (response.data != null) {
      mapWeeklySchedule(response.data!);
    }

    baseParams.loading.postValue(false);
  }

  mapWeeklySchedule(WeeklySchedule weeklySchedule) {
    List<CustomWeeklySchedule> temp = [];
    if (weeklySchedule.sunday != null && weeklySchedule.sunday!.isNotEmpty) {
      temp.add(CustomWeeklySchedule("sunday", weeklySchedule.sunday!));
    }
    if (weeklySchedule.monday != null && weeklySchedule.monday!.isNotEmpty) {
      temp.add(CustomWeeklySchedule("monday", weeklySchedule.monday!));
    }
    if (weeklySchedule.tuesday != null && weeklySchedule.tuesday!.isNotEmpty) {
      temp.add(CustomWeeklySchedule("tuesday", weeklySchedule.tuesday!));
    }
    if (weeklySchedule.wednesday != null &&
        weeklySchedule.wednesday!.isNotEmpty) {
      temp.add(CustomWeeklySchedule("wednesday", weeklySchedule.wednesday!));
    }
    if (weeklySchedule.thursday != null &&
        weeklySchedule.thursday!.isNotEmpty) {
      temp.add(CustomWeeklySchedule("thursday", weeklySchedule.thursday!));
    }
    if (weeklySchedule.friday != null && weeklySchedule.friday!.isNotEmpty) {
      temp.add(CustomWeeklySchedule("friday", weeklySchedule.friday!));
    }
    if (weeklySchedule.saturday != null &&
        weeklySchedule.saturday!.isNotEmpty) {
      temp.add(CustomWeeklySchedule("saturday", weeklySchedule.saturday!));
    }
    params.customWeeklySchedule.postValue(temp);
    params.customWeeklySchedule.value[0].isSelected = true;
  }

  changeIndex(int index) {
    params.customWeeklySchedule.value[params.selectedIndex.value].isSelected =
        false;
    params.customWeeklySchedule.value[index].isSelected = true;
    params.customWeeklySchedule
        .postValue(params.customWeeklySchedule.value.toList());
    params.selectedIndex.postValue(index);
  }
}
