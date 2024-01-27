import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nadrus_student_app/controllers/tenant_controller.dart';
import 'package:nadrus_student_app/models/data/announcement/announcement.dart';
import 'package:nadrus_student_app/models/responses/base_response/base_response.dart';
import 'package:nadrus_student_app/network/announcements_rest_client/announcements_rest_client.dart';

import 'base_repository.dart';

class AnnouncementsRepository extends BaseRepository {
  /// Tenant Specific Url
  late final AnnouncementsRestClient announcementsRestClient;

  AnnouncementsRepository() {
    announcementsRestClient = AnnouncementsRestClient(GetIt.I.get<Dio>(),
        baseUrl: TenantController.baseUrl());
  }

  Future<BaseResponse<List<Announcement>>> getAnnouncements(
      {bool expired = false, required String sectionId}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => announcementsRestClient
          .getAnnouncements(
              expired: expired, sectionId: sectionId, cancelToken: cancelToken)
          .onError((error, _) => catchError<List<Announcement>>(error)),
      cancelToken: cancelToken,
    );
  }
}
