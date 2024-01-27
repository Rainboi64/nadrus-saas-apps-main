import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/data/student/student.dart';
import '../../models/responses/base_response/base_response.dart';

part 'students_rest_client.g.dart';

@RestApi()
abstract class StudentsRestClient {
  factory StudentsRestClient(Dio dio, {required String baseUrl}) =
      _StudentsRestClient;

  @GET("/students")
  Future<BaseResponse<List<Student>>> getStudents({
    @Query("section_id") required String sectionId,
    @CancelRequest() CancelToken? cancelToken,
  });
}
