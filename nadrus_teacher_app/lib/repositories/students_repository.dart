import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_teacher_app/models/data/student/student.dart';
import 'package:nadrus_teacher_app/network/students_rest_client/students_rest_client.dart';

import '../controllers/tenant_controller.dart';
import '../models/responses/base_response/base_response.dart';
import 'base_repository.dart';

class StudentsRepository extends BaseRepository {
  /// Tenant Specific Url
  late final StudentsRestClient studentsRestClient;

  StudentsRepository() {
    studentsRestClient = StudentsRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<List<Student>>> getStudents({required String sectionId}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => studentsRestClient
          .getStudents(sectionId: sectionId, cancelToken: cancelToken)
          .onError((error, _) => catchError<List<Student>>(error)),
      cancelToken: cancelToken,
    );
  }
}
