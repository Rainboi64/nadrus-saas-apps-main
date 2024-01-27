import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/data/whiteboard/whiteboard.dart';
import '../../models/data_models.dart';
import '../../models/responses/base_response/base_response.dart';

part 'summaries_rest_client.g.dart';

@RestApi()
abstract class SummariesRestClient {
  factory SummariesRestClient(Dio dio, {required String baseUrl}) =
      _SummariesRestClient;

  @GET("/summary/todays-homeworks")
  Future<BaseResponse<List<Homework>>> getTodaysHomeworks({
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("/summary/tomorrows-subjects")
  Future<BaseResponse<List<WeeklyScheduleDayItem>>> getTomorrowsSubjects({
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("/summary/todays-whiteboards")
  Future<BaseResponse<List<Whiteboard>>> getWhiteboards({
    @CancelRequest() CancelToken? cancelToken,
  });
}
