import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/responses/base_response/base_response.dart';

part 'homeworks_rest_client.g.dart';

@RestApi()
abstract class HomeworksRestClient {
  factory HomeworksRestClient(Dio dio, {required String baseUrl}) =
      _HomeworksRestClient;

  @PUT("/homeworks/{homeworkId}/bulk-check")
  @FormUrlEncoded()
  Future<BaseResponse<dynamic>> checkHomework({
    @Path() required String homeworkId,
    @Body() required Map<String, dynamic> body,
    @CancelRequest() CancelToken? cancelToken,
  });
}
