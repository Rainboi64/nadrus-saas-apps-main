import 'package:dio/dio.dart';
import 'package:nadrus_student_app/models/data/lesson_details/lesson_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/data_models.dart';
import '../../models/responses/base_response/base_response.dart';

part 'subjects_rest_client.g.dart';

@RestApi()
abstract class SubjectsRestClient {
  factory SubjectsRestClient(Dio dio, {required String baseUrl}) =
      _SubjectsRestClient;

  @GET("/subjects")
  Future<BaseResponse<List<Subject>>> getSubjects({
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("/subjects/{id}/lessons")
  Future<BaseResponse<List<Lesson>>> getSubjectLessons({
    @Path() required String id,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("/subjects/{subjectId}/lessons/{lessonId}")
  Future<BaseResponse<LessonDetails?>> getLessonDetails({
    @Path() required String subjectId,
    @Path() required String lessonId,
    @CancelRequest() CancelToken? cancelToken,
  });
}
