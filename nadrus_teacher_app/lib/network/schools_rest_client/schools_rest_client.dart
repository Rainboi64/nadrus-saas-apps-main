import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/data/school/school.dart';
import '../../models/responses/base_response/base_response.dart';

part 'schools_rest_client.g.dart';

@RestApi()
abstract class SchoolsRestClient {
  factory SchoolsRestClient(Dio dio, {required String baseUrl}) =
      _SchoolsRestClient;

  @GET("/schools")
  Future<BaseResponse<List<School>>> getSchools({
    @CancelRequest() CancelToken? cancelToken,
  });
}
