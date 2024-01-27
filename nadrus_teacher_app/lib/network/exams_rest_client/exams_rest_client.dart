import 'package:dio/dio.dart';
import 'package:nadrus_teacher_app/models/data/collection/collection.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/responses/base_response/base_response.dart';

part 'exams_rest_client.g.dart';

@RestApi()
abstract class ExamsRestClient {
  factory ExamsRestClient(Dio dio, {required String baseUrl}) =
      _ExamsRestClient;

  @GET("/exams/collection/")
  Future<BaseResponse<List<Collection>>> getExamsCollection({
    @Query("section_id") String? sectionId,
    @Query("is_active") bool? isActive,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST("/exams/collection/")
  Future<BaseResponse<Collection>> createExamsCollection({
    @Body() required Map<String, dynamic> body,
    @CancelRequest() CancelToken? cancelToken,
  });
  //Example body
  // {"title": "سبور الفصل الأول",
  // "selectable_by_teachers": true}

  @PUT("/exams/collection/")
  Future<BaseResponse<Collection>> updateExamsCollection({
    @Query("collection_id") required String collectionId,
    @Body() required Map<String, dynamic> body,
    @CancelRequest() CancelToken? cancelToken,
  });
  //Example body
  // {"title": "مذاكرة الفصل الثاني"}

  @POST("/exams/collection/{collectionId}/exams/")
  Future<BaseResponse<dynamic>> createExams({
    @Path() required String collectionId,
    @Body() required Map<String, dynamic> body,
    @CancelRequest() CancelToken? cancelToken,
  });
  //Example body
  // {"exam_collection_id": 14,
  // "section_id": 1,
  // "lessons_ids": [1],
  // "date": "2023-08-12",
  // "title": "سبر رياضيات",
  // "description": "كل ما اخذ",
  // "total_score": 100}

  @POST("/exams/collection/{collectionId}/exams/{examId}/score")
  Future<BaseResponse<dynamic>> setScore({
    @Path() required String collectionId,
    @Path() required String examId,
    @Body() required Map<String, dynamic> body,
    @CancelRequest() CancelToken? cancelToken,
  });
  //Example body
  // {"student_id": 11,
  // "deserved_score": 12}

  @PUT("/exams/collection/{collectionId}/exams/{examId}/score/{scoreId}")
  Future<BaseResponse<dynamic>> updateScore({
    @Path() required String collectionId,
    @Path() required String examId,
    @Path() required String scoreId,
    @Body() required Map<String, dynamic> body,
    @CancelRequest() CancelToken? cancelToken,
  });
  //Example body
  // {"student_id": 11,
  // "deserved_score": 12}
}
