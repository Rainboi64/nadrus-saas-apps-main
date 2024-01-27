import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/models/data/user/user.dart';
import 'package:nadrus_student_app/repositories/user_repository.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../controllers/auth_controller.dart';
import '../../../../models/responses/base_response/base_response.dart';
import '../../../../router/app_router.dart';
import "main_params.dart";

class MainViewModel extends BaseViewModel {
  final _params = Lazy(() => MainParams());
  MainParams get params => _params.value;

  final _userRepository = Lazy(() => UserRepository());
  UserRepository get userRepository => _userRepository.value;

  @override
  void onInit() {
    super.onInit();
    //getUserFirstName();
    getUser();
    // called immediately after the widget is allocated in memory.
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getUserFirstName() async {
    await AuthenticationController.getUser().then((value) {
      if (value.user != null) {
        params.user.postValue(value.user);

        /// params.userFirstName.postValue(value.user!.firstName ?? "");
      }
    });
  }

  getUser() async {
    baseParams.loading.postValue(true);

    BaseResponse<User> response = await userRepository.getUser();

    if (response.data != null) {
      params.user.postValue(response.data!);
    }

    baseParams.loading.postValue(false);
  }

  logOut() async {
    baseParams.loading.postValue(true);
    AuthenticationController.logOut();
    baseParams.loading.postValue(false);
    appRouter.replaceAll([const Initial()]);
  }

  showProfileDialog() {}
}
