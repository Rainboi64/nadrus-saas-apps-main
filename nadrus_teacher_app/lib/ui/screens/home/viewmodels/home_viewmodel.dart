import 'package:lazy_evaluation/lazy_evaluation.dart';

import '../../../../controllers/auth_controller.dart';
import '../../../../models/data/session/session.dart';
import '../../../../models/responses/base_response/base_response.dart';
import '../../../../models/responses/login_response/login_response.dart';
import '../../../../repositories/summaries_repository.dart';
import '../../../../viewmodels/base_viewmodel.dart';
import "home_params.dart";

class HomeViewModel extends BaseViewModel {
  final _params = Lazy(() => HomeParams());
  HomeParams get params => _params.value;

  final _summariesRepository = Lazy(() => SummariesRepository());
  SummariesRepository get summariesRepository => _summariesRepository.value;

  @override
  void onInit() {
    super.onInit();
    getTeacherName();
    getTodaysSessions();
  }

  @override
  void onDispose() {
    super.onDispose();
  }

  getTeacherName() async {
    LoginResponse user = await AuthenticationController.getUser();
    if (user != null) {
      if (user.user != null) {
        if (user.user!.firstName != null) {
          params.name.postValue(user.user!.firstName!);
        }
      }
    }
  }

  getTodaysSessions() async {
    baseParams.loading.postValue(true);

    BaseResponse<List<Session>> response =
        await summariesRepository.getTodaysSessions();

    if (response.data != null) {
      if (response.data!.isNotEmpty) {
        params.todaysSessions.postValue(response.data!);
      }
    }
    baseParams.loading.postValue(false);
  }
}
