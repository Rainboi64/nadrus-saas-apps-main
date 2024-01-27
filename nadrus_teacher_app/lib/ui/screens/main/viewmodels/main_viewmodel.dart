import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import '../../../../controllers/auth_controller.dart';
import '../../../../router/app_router.dart';
import "main_params.dart";

class MainViewModel extends BaseViewModel {
  final _params = Lazy(() => MainParams());
  MainParams get params => _params.value;

  @override
  void onInit() {
    super.onInit();
    // called immediately after the widget is allocated in memory.
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  toggleBetweenScreens(int index) {
    params.selectedScreen.postValue(index);
  }

  logOut() async {
    baseParams.loading.postValue(true);
    AuthenticationController.logOut();
    baseParams.loading.postValue(false);
    appRouter.replaceAll([const Initial()]);
  }
}
