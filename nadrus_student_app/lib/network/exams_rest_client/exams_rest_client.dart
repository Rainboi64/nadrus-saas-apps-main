import 'package:dio/dio.dart';
import 'package:nadrus_student_app/models/data/exam/exam.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/data/exam_collection/exam_collection.dart';
import '../../models/responses/base_response/base_response.dart';

part 'exams_rest_client.g.dart';

@RestApi()
abstract class ExamsRestClient {
  factory ExamsRestClient(Dio dio, {required String baseUrl}) =
      _ExamsRestClient;

  @GET("/exams/collection/")
  Future<BaseResponse<List<ExamCollection>>> getAllExams({
    @Query("is_active") bool? isActive,
    @Query("student_id") String? studentId,
    @Query("only_selectable") bool? onlySelectable,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("/exams/collection/{collectionId}/exams")
  Future<BaseResponse<List<Exam>>> getExam({
    @Path() required String collectionId,
    @Query("subject_id") String? subjectId,
    @Query("historical") required bool historical,
    @Query("student_id") String? studentId,
    @Query("grade_id") String? gradeId,
    @Query("section_id") String? sectionId,
    @CancelRequest() CancelToken? cancelToken,
  });
}
