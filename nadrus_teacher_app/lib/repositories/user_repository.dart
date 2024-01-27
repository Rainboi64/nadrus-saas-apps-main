import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../models/data_models.dart';
import '../models/responses/base_response/base_response.dart';
import '../network/config/env.dart';
import '../network/user_rest_client/user_rest_client.dart';
import 'base_repository.dart';

class UserRepository extends BaseRepository {
  /// Central Url
  late final UserRestClient userRestClient;

  UserRepository() {
    userRestClient = UserRestClient(GetIt.I.get<Dio>(), baseUrl: Env.baseUrl);
  }

  final String provider = 'teachers';

  Future<BaseResponse<LoginResponse>> login(
      {required String username, required String password}) {
    final cancelToken = CancelToken();
    return getResponse(
      () => userRestClient
          .login(
            username: username,
            password: password,
            provider: provider,
            cancelToken: cancelToken,
          )
          .onError((error, _) => catchError<LoginResponse>(error)),
    );
  }

  // Future<BaseResponse<LoginResponse>> verifyCode(String number, String code) {
  //   final cancelToken = CancelToken();
  //   return getResponse(
  //         () => userRestClient.verifyCode(number: number, code: code, cancelToken: cancelToken).onError((error, _) => catchError<LoginResponse>(error)),
  //     cancelToken: cancelToken,
  //   );
  // }
  //
  // Future<BaseResponse<User>> updateUser(
  //     Map<String, dynamic> user,
  //     ) {
  //   /// Complete info after login
  //   final cancelToken = CancelToken();
  //   return getResponse(
  //         () => userRestClient.updateUser(user: FormData.fromMap(user), cancelToken: cancelToken).onError((error, _) => catchError<User>(error)),
  //     cancelToken: cancelToken,
  //   );
  // }
  //
  // Future<BaseResponse<dynamic>> logout(String deviceId) {
  //   final cancelToken = CancelToken();
  //   return getResponse(
  //         () => userRestClient.logOut(deviceId: deviceId, cancelToken: cancelToken).onError((error, _) => catchError<dynamic>(error)),
  //     cancelToken: cancelToken,
  //   );
  // }
  //
  // Future<BaseResponse<dynamic>> setFcmToken(String token, String platform) {
  //   final cancelToken = CancelToken();
  //   return getResponse(
  //         () => userRestClient.setFcmToken(token: token, platform: platform).onError((error, _) => catchError<dynamic>(error)),
  //     cancelToken: cancelToken,
  //   );
  // }
  //
  // Future<BaseResponse<dynamic>> removeFcmToken() {
  //   final cancelToken = CancelToken();
  //   return getResponse(
  //         () => userRestClient.removeFcmToken().onError((error, _) => catchError<dynamic>(error)),
  //     cancelToken: cancelToken,
  //   );
  // }
  //
  // Future<BaseResponse<User>> getUser() {
  //   final cancelToken = CancelToken();
  //   return getResponse(
  //         () => userRestClient.getUser(cancelToken: cancelToken).onError((error, _) => catchError<User>(error)),
  //     cancelToken: cancelToken,
  //   );
  // }
}
