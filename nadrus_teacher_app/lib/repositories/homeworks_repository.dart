import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_teacher_app/models/data/student/student.dart';
import 'package:nadrus_teacher_app/network/homeworks_rest_client/homeworks_rest_client.dart';

import '../controllers/tenant_controller.dart';
import '../models/responses/base_response/base_response.dart';
import 'base_repository.dart';

class HomeworksRepository extends BaseRepository {
  /// Tenant Specific Url
  late final HomeworksRestClient homeworksRestClient;

  HomeworksRepository() {
    homeworksRestClient = HomeworksRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<dynamic>> checkHomework(
      {required String homeworkId, required List<Student> students}) async {
    List<Map<String, dynamic>> toUpdate = students.map((student) {
      return {"student_id": student.id, "status": student.selected};
    }).toList();

    final Map<String, dynamic> rawBody = {
      "to_update": toUpdate,
    };

    final cancelToken = CancelToken();
    return getResponse(
      () => homeworksRestClient
          .checkHomework(
            homeworkId: homeworkId,
            body: rawBody,
            cancelToken: cancelToken,
          )
          .onError((error, _) => catchError<dynamic>(error)),
      cancelToken: cancelToken,
    );
  }
}
