import 'package:dio/dio.dart';
import 'package:nadrus_student_app/models/data/announcement/announcement.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/responses/base_response/base_response.dart';

part 'announcements_rest_client.g.dart';

@RestApi()
abstract class AnnouncementsRestClient {
  factory AnnouncementsRestClient(Dio dio, {required String baseUrl}) =
      _AnnouncementsRestClient;

  @GET("/announcement")
  Future<BaseResponse<List<Announcement>>> getAnnouncements({
    @Query("expired") required bool expired,
    @Query("section_id") required String sectionId,
    @CancelRequest() CancelToken? cancelToken,
  });
}
