import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/responses/base_response/base_response.dart';

part 'feedback_rest_client.g.dart';

@RestApi()
abstract class FeedbackRestClient {
  factory FeedbackRestClient(Dio dio, {required String baseUrl}) =
      _FeedbackRestClient;

  @POST("/students/{studentId}/feedback")
  Future<BaseResponse<dynamic>> sendFeedbackToParents({
    @Path() required String studentId,
    @Body() required Map<String, dynamic> body,
    @CancelRequest() CancelToken? cancelToken,
  });
  //Example body
  // {
  // "content": "شغب اثناء الحصة",
  // "type": "POSITIVE"
  // }
}
