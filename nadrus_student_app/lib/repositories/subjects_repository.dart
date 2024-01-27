import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_student_app/controllers/tenant_controller.dart';
import 'package:nadrus_student_app/models/data/lesson_details/lesson_details.dart';
import 'package:nadrus_student_app/models/responses/base_response/base_response.dart';
import 'package:nadrus_student_app/network/subjects_rest_client/subjects_rest_client.dart';

import '../models/data_models.dart';
import 'base_repository.dart';

class SubjectsRepository extends BaseRepository {
  /// Tenant Specific Url
  late final SubjectsRestClient subjectsRestClient;

  SubjectsRepository() {
    subjectsRestClient = SubjectsRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<List<Subject>>> getSubjects() {
    final cancelToken = CancelToken();
    return getResponse(
      () => subjectsRestClient
          .getSubjects(cancelToken: cancelToken)
          .onError((error, _) => catchError<List<Subject>>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<List<Lesson>>> getSubjectsLessons({int? id}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => subjectsRestClient
          .getSubjectLessons(id: id!.toString(), cancelToken: cancelToken)
          .onError((error, _) => catchError<List<Lesson>>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<LessonDetails?>> getLessonDetails(
      {int? subjectId, int? lessonId}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => subjectsRestClient
          .getLessonDetails(
              subjectId: subjectId!.toString(),
              lessonId: lessonId.toString(),
              cancelToken: cancelToken)
          .onError((error, _) => catchError<LessonDetails?>(error)),
      cancelToken: cancelToken,
    );
  }
}
