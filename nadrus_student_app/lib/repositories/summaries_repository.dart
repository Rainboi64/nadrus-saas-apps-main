import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_student_app/controllers/tenant_controller.dart';
import 'package:nadrus_student_app/models/data/whiteboard/whiteboard.dart';
import 'package:nadrus_student_app/models/responses/base_response/base_response.dart';
import 'package:nadrus_student_app/network/summaries_rest_client/summaries_rest_client.dart';

import '../models/data_models.dart';
import 'base_repository.dart';

class SummariesRepository extends BaseRepository {
  /// Tenant Specific Url
  late final SummariesRestClient summariesRestClient;

  SummariesRepository() {
    summariesRestClient = SummariesRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<List<Homework>>> getTodaysHomeworks() {
    final cancelToken = CancelToken();
    return getResponse(
      () => summariesRestClient
          .getTodaysHomeworks(cancelToken: cancelToken)
          .onError((error, _) => catchError<List<Homework>>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<List<WeeklyScheduleDayItem>>> getTomorrowsSubjects() {
    final cancelToken = CancelToken();
    return getResponse(
      () => summariesRestClient
          .getTomorrowsSubjects(cancelToken: cancelToken)
          .onError(
              (error, _) => catchError<List<WeeklyScheduleDayItem>>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<List<Whiteboard>>> getWhiteboards() {
    final cancelToken = CancelToken();
    return getResponse(
      () => summariesRestClient
          .getWhiteboards(cancelToken: cancelToken)
          .onError((error, _) => catchError<List<Whiteboard>>(error)),
      cancelToken: cancelToken,
    );
  }
}
