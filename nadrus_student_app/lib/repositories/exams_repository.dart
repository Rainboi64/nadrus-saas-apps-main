import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_student_app/controllers/tenant_controller.dart';
import 'package:nadrus_student_app/models/data/exam/exam.dart';
import 'package:nadrus_student_app/models/responses/base_response/base_response.dart';
import 'package:nadrus_student_app/network/exams_rest_client/exams_rest_client.dart';

import '../models/data/exam_collection/exam_collection.dart';
import 'base_repository.dart';

class ExamsRepository extends BaseRepository {
  /// Tenant Specific Url
  late final ExamsRestClient examsRestClient;

  ExamsRepository() {
    examsRestClient = ExamsRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<List<ExamCollection>>> getAllExams(
      {bool? isActive, bool? onlySelectable, String? studentId}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => examsRestClient
          .getAllExams(
              isActive: isActive,
              onlySelectable: onlySelectable,
              studentId: studentId,
              cancelToken: cancelToken)
          .onError((error, _) => catchError<List<ExamCollection>>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<List<Exam>>> getExam(
      {bool historical = false,
      required String collectionId,
      String? subjectId,
      String? gradeId,
      String? sectionId,
      String? studentId}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => examsRestClient
          .getExam(
              historical: historical,
              collectionId: collectionId,
              gradeId: gradeId,
              sectionId: sectionId,
              studentId: studentId,
              subjectId: subjectId,
              cancelToken: cancelToken)
          .onError((error, _) => catchError<List<Exam>>(error)),
      cancelToken: cancelToken,
    );
  }
}
