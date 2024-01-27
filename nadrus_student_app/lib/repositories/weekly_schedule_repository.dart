import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_student_app/controllers/tenant_controller.dart';
import 'package:nadrus_student_app/models/data/weekly_schedule/weekly_schedule.dart';
import 'package:nadrus_student_app/models/responses/base_response/base_response.dart';
import 'package:nadrus_student_app/network/weekly_schedule_rest_client/weekly_schedule_rest_client.dart';

import 'base_repository.dart';

class WeeklyScheduleRepository extends BaseRepository {
  /// Tenant Specific Url
  late final WeeklyScheduleRestClient weeklyScheduleRestClient;

  WeeklyScheduleRepository() {
    weeklyScheduleRestClient = WeeklyScheduleRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<WeeklySchedule>> getWeeklySchedule() {
    final cancelToken = CancelToken();
    return getResponse(
      () => weeklyScheduleRestClient
          .getWeeklySchedule(cancelToken: cancelToken)
          .onError((error, _) => catchError<WeeklySchedule>(error)),
      cancelToken: cancelToken,
    );
  }
}
