import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_teacher_app/models/data/session/session.dart';

import '../models/responses/base_response/base_response.dart';
import '../network/config/env.dart';
import '../network/summaries_rest_client/summaries_rest_client.dart';
import 'base_repository.dart';

class SummariesRepository extends BaseRepository {
  /// Central Url
  late final SummariesRestClient summariesRestClient;

  SummariesRepository() {
    summariesRestClient =
        SummariesRestClient(GetIt.I.get<Dio>(), baseUrl: Env.baseUrl);
  }

  Future<BaseResponse<List<Session>>> getTodaysSessions() {
    final cancelToken = CancelToken();
    return getResponse(
      () => summariesRestClient
          .getTodaysSessions(cancelToken: cancelToken)
          .onError((error, _) => catchError<List<Session>>(error)),
      cancelToken: cancelToken,
    );
  }
}
