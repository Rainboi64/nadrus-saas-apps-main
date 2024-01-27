import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_teacher_app/network/feedback_rest_client/feedback_rest_client.dart';

import '../controllers/tenant_controller.dart';
import '../models/responses/base_response/base_response.dart';
import 'base_repository.dart';

class FeedbackRepository extends BaseRepository {
  /// Tenant Specific Url
  late final FeedbackRestClient feedbackRestClient;

  FeedbackRepository() {
    feedbackRestClient = FeedbackRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<dynamic>> sendFeedbackToParents({
    required String studentId,
    required String content,
  }) async {
    final Map<String, dynamic> rawBody = {
      "content": content,
      "type": "NEGATIVE",
    };
    final cancelToken = CancelToken();
    return getResponse(
      () => feedbackRestClient
          .sendFeedbackToParents(
            studentId: studentId,
            body: rawBody,
            cancelToken: cancelToken,
          )
          .onError((error, _) => catchError<dynamic>(error)),
      cancelToken: cancelToken,
    );
  }
}
