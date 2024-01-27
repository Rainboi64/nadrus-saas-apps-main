import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_teacher_app/models/data/school/school.dart';

import '../models/responses/base_response/base_response.dart';
import '../network/config/env.dart';
import '../network/schools_rest_client/schools_rest_client.dart';
import 'base_repository.dart';

class SchoolsRepository extends BaseRepository {
  /// Central Url
  late final SchoolsRestClient schoolsRestClient;

  SchoolsRepository() {
    schoolsRestClient =
        SchoolsRestClient(GetIt.I.get<Dio>(), baseUrl: Env.baseUrl);
  }

  Future<BaseResponse<List<School>>> getSchools() {
    final cancelToken = CancelToken();
    return getResponse(
      () => schoolsRestClient
          .getSchools(cancelToken: cancelToken)
          .onError((error, _) => catchError<List<School>>(error)),
      cancelToken: cancelToken,
    );
  }
}
