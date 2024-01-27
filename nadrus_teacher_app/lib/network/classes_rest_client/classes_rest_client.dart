import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/data/class_details/class_details.dart';
import '../../models/responses/base_response/base_response.dart';

part 'classes_rest_client.g.dart';

@RestApi()
abstract class ClassesRestClient {
  factory ClassesRestClient(Dio dio, {required String baseUrl}) =
      _ClassesRestClient;

  @POST("/grades/{grade}/sections/{section}/classes")
  @FormUrlEncoded()
  Future<BaseResponse<dynamic>> createClass({
    @Path() required String grade,
    @Path() required String section,
    @Field("lesson_id") required String lessonId,
    @Field("completion_rate") required String completionRate,
    @CancelRequest() CancelToken? cancelToken,
  });

  @PUT("/grades/{grade}/sections/{section}/classes")
  Future<BaseResponse<dynamic>> editClass({
    @Path() required String grade,
    @Path() required String section,
    @Field("lesson_id") required String lessonId,
    @Field("completion_rate") required String completionRate,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST("/grades/{grade}/sections/{section}/classes/{classId}/homework")
  Future<BaseResponse<dynamic>> createHomework({
    @Path() required String grade,
    @Path() required String section,
    @Path() required String classId,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST("/grades/{grade}/sections/{section}/classes/{classId}/whiteboard")
  Future<BaseResponse<dynamic>> uploadWhiteboard({
    @Path() required String grade,
    @Path() required String section,
    @Path() required String classId,
    @Body() required FormData formData,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET(
      "/grades/{grade}/sections/{section}/class-times/{weeklyScheduleId}/class-details")
  Future<BaseResponse<ClassDetails>> getClassDetails({
    @Path() required String grade,
    @Path() required String section,
    @Path() required String weeklyScheduleId,
    @CancelRequest() CancelToken? cancelToken,
  });
}
