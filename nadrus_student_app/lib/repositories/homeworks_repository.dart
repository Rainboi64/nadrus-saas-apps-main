import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_student_app/controllers/tenant_controller.dart';
import 'package:nadrus_student_app/models/responses/base_response/base_response.dart';
import 'package:nadrus_student_app/network/homeworks_rest_client/homeworks_rest_client.dart';

import '../models/data_models.dart';
import 'base_repository.dart';

class HomeworksRepository extends BaseRepository {
  /// Tenant Specific Url
  late final HomeworksRestClient homeworksRestClient;

  HomeworksRepository() {
    homeworksRestClient = HomeworksRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<List<Homework>>> getHomeworks({required String date}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => homeworksRestClient
          .getHomeworks(date: date, cancelToken: cancelToken)
          .onError((error, _) => catchError<List<Homework>>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<Homework>> solveHomework(
      {required String homeworkId, required bool isDone}) {
    //Successful response
    //{"status": true}

    final Map<String, dynamic> rawBody = {"isDone": isDone};
    final cancelToken = CancelToken();
    return getResponse(
      () => homeworksRestClient
          .solveHomework(
              homeworkId: homeworkId, body: rawBody, cancelToken: cancelToken)
          .onError((error, _) => catchError<Homework>(error)),
      cancelToken: cancelToken,
    );
  }
}
