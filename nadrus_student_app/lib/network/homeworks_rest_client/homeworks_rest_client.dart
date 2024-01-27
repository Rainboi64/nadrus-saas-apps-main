import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/data_models.dart';
import '../../models/responses/base_response/base_response.dart';

part 'homeworks_rest_client.g.dart';

@RestApi()
abstract class HomeworksRestClient {
  factory HomeworksRestClient(Dio dio, {required String baseUrl}) =
      _HomeworksRestClient;

  @GET("/homeworks")
  Future<BaseResponse<List<Homework>>> getHomeworks({
    @Query("date") String? date,
    @CancelRequest() CancelToken? cancelToken,
  });

  @PUT("/homeworks/{homeworkId}/check")
  Future<BaseResponse<Homework>> solveHomework({
    @Path() required String homeworkId,
    @Body() required Map<String, dynamic> body,
    @CancelRequest() CancelToken? cancelToken,
  });
}
