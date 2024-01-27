import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_teacher_app/models/data/class_details/class_details.dart';

import '../controllers/tenant_controller.dart';
import '../models/responses/base_response/base_response.dart';
import '../network/classes_rest_client/classes_rest_client.dart';
import 'base_repository.dart';

class ClassesRepository extends BaseRepository {
  /// Tenant Specific Url
  late final ClassesRestClient classesRestClient;

  ClassesRepository() {
    classesRestClient = ClassesRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<dynamic>> createClass(
      {required String grade,
      required String section,
      required String lessonId,
      required String completionRate}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => classesRestClient
          .createClass(
              grade: grade,
              section: section,
              lessonId: lessonId,
              completionRate: completionRate,
              cancelToken: cancelToken)
          .onError((error, _) => catchError<dynamic>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> editClass(
      {required String grade,
      required String section,
      required String lessonId,
      required String completionRate}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => classesRestClient
          .editClass(
              grade: grade,
              section: section,
              lessonId: lessonId,
              completionRate: completionRate,
              cancelToken: cancelToken)
          .onError((error, _) => catchError<dynamic>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> createHomework(
      {required String grade,
      required String section,
      required String classId}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => classesRestClient
          .createHomework(
              grade: grade,
              section: section,
              classId: classId,
              cancelToken: cancelToken)
          .onError((error, _) => catchError<dynamic>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> uploadWhiteboard({
    required String grade,
    required String section,
    required String classId,
    //required List<String> paths, //for multiple images
    required String path,
  }) async {
    //for multiple images
    // final FormData formData = FormData();
    // for (var i = 0; i < paths.length; i++) {
    //   formData.files
    //       .add(MapEntry("files[$i]", await MultipartFile.fromFile(paths[i])));
    // }

    final FormData formData = FormData();
    formData.files.add(MapEntry("image", await MultipartFile.fromFile(path)));

    final cancelToken = CancelToken();
    return getResponse(
      () => classesRestClient
          .uploadWhiteboard(
              grade: grade,
              section: section,
              classId: classId,
              formData: formData,
              cancelToken: cancelToken)
          .onError((error, _) => catchError<dynamic>(error)),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<ClassDetails>> getClassDetails(
      {required String grade,
      required String section,
      required String weeklyScheduleId}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => classesRestClient
          .getClassDetails(
              grade: grade,
              section: section,
              weeklyScheduleId: weeklyScheduleId,
              cancelToken: cancelToken)
          .onError((error, _) => catchError<ClassDetails>(error)),
      cancelToken: cancelToken,
    );
  }
}
