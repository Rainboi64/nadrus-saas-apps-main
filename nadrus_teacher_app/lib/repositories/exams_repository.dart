import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_teacher_app/models/data/collection/collection.dart';
import 'package:nadrus_teacher_app/network/exams_rest_client/exams_rest_client.dart';

import '../controllers/tenant_controller.dart';
import '../models/responses/base_response/base_response.dart';
import 'base_repository.dart';

class ExamsRepository extends BaseRepository {
  /// Tenant Specific Url
  late final ExamsRestClient examsRestClient;

  ExamsRepository() {
    examsRestClient = ExamsRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<List<Collection>>> getExamsCollection(
      {String? sectionId, bool? isActive}) async {
    final cancelToken = CancelToken();
    return getResponse(
      () => examsRestClient
          .getExamsCollection(
            sectionId: sectionId,
            isActive: isActive,
            cancelToken: cancelToken,
          )
          .onError((error, _) => catchError<List<Collection>>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<Collection>> createExamsCollection({
    required String title,
    required String type,
    required bool selectableByTeachers,
  }) async {
    final Map<String, dynamic> rawBody = {
      "title": title,
      "type": type,
      "selectable_by_teachers": selectableByTeachers,
    };
    final cancelToken = CancelToken();
    return getResponse(
      () => examsRestClient
          .createExamsCollection(
            body: rawBody,
            cancelToken: cancelToken,
          )
          .onError((error, _) => catchError<Collection>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<Collection>> updateExamsCollection({
    required String collectionId,
    required String title,
    required bool selectableByTeachers,
  }) async {
    final Map<String, dynamic> rawBody = {
      "title": title,
      "selectable_by_teachers": selectableByTeachers,
    };
    final cancelToken = CancelToken();
    return getResponse(
      () => examsRestClient
          .updateExamsCollection(
            collectionId: collectionId,
            body: rawBody,
            cancelToken: cancelToken,
          )
          .onError((error, _) => catchError<Collection>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> createExams(
      {required String collectionId,
      required String examCollectionId,
      required String sectionId,
      required List<int> lessonsIds,
      required String date,
      required String title,
      required String description,
      required String totalScore}) async {
    final Map<String, dynamic> rawBody = {
      "exam_collection_id": examCollectionId,
      "section_id": sectionId,
      "lessons_ids": lessonsIds,
      "date": date,
      "title": title,
      "description": description,
      "total_score": totalScore
    };

    final cancelToken = CancelToken();
    return getResponse(
      () => examsRestClient
          .createExams(
              collectionId: collectionId,
              body: rawBody,
              cancelToken: cancelToken)
          .onError((error, _) => catchError<dynamic>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> setScore({
    required String collectionId,
    required String examId,
    required String studentId,
    required String deservedScore,
  }) async {
    final Map<String, dynamic> rawBody = {
      "student_id": studentId,
      "deserved_score": deservedScore
    };

    final cancelToken = CancelToken();
    return getResponse(
      () => examsRestClient
          .setScore(
            collectionId: collectionId,
            examId: examId,
            body: rawBody,
            cancelToken: cancelToken,
          )
          .onError((error, _) => catchError<dynamic>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> updateScore({
    required String collectionId,
    required String examId,
    required String studentId,
    required String scoreId,
    required String deservedScore,
  }) async {
    final Map<String, dynamic> rawBody = {
      "student_id": studentId,
      "deserved_score": deservedScore
    };

    final cancelToken = CancelToken();
    return getResponse(
      () => examsRestClient
          .updateScore(
            scoreId: scoreId,
            collectionId: collectionId,
            examId: examId,
            body: rawBody,
            cancelToken: cancelToken,
          )
          .onError((error, _) => catchError<dynamic>(error)),
      cancelToken: cancelToken,
    );
  }
}
