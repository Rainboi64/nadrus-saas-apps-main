import 'package:dio/dio.dart';
import 'package:nadrus_teacher_app/models/data/session/session.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/responses/base_response/base_response.dart';

part 'summaries_rest_client.g.dart';

@RestApi()
abstract class SummariesRestClient {
  factory SummariesRestClient(Dio dio, {required String baseUrl}) =
      _SummariesRestClient;

  @GET("/summary/todays-classes")
  Future<BaseResponse<List<Session>>> getTodaysSessions({
    @CancelRequest() CancelToken? cancelToken,
  });
}
