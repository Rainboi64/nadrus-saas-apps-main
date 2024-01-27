import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/data/weekly_schedule/weekly_schedule.dart';
import '../../models/responses/base_response/base_response.dart';

part 'weekly_schedule_rest_client.g.dart';

@RestApi()
abstract class WeeklyScheduleRestClient {
  factory WeeklyScheduleRestClient(Dio dio, {required String baseUrl}) =
      _WeeklyScheduleRestClient;

  @GET("/weekly-schedule")
  Future<BaseResponse<WeeklySchedule>> getWeeklySchedule({
    @CancelRequest() CancelToken? cancelToken,
  });
}
