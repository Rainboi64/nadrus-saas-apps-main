import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/models/ui_models/ui_message.dart';
import 'package:nadrus_teacher_app/ui/widgets/instance/instance_state.dart';

import '../models/responses/base_response/base_response.dart';
import 'base_params.dart';

abstract class BaseViewModel extends LifeCycle {
  final _baseParams = Lazy(() => BaseParams());
  BaseParams get baseParams => _baseParams.value;

  /// call http request, check if user connecting to internet
  ///
  /// [loading] is optional [MutableLiveData] params which control your ui-loader (ProgressBar) while request in-progress
  /// [request] is a [Future] return type of [BaseResponse] called inside [callHttpRequest].
  /// [callback] is a [Function] called after [request] fetched,
  /// [callback] return nullable [X] result if [request] success else return `null`
  Future<void> callHttpRequest<X>(
    Future<BaseResponse<X>> Function() request, {
    MutableLiveData<bool>? loading,
    Function(X? result, bool success)? callback,
  }) async {
    // check if connecting to internet
    bool isOnline = await isConnectingToInternet();
    if (isOnline) {
      // notify ui to show loader
      loading?.postValue(true);

      // call http request
      final response = await request.call();
      if (response.data != null) {
        // success response
        callback?.call(response.data, true);
      } else {
        // error response
        baseParams.uiMessage.postValue(
            UiMessage(message: response.message, state: UiMessageState.error));
        callback?.call(null, false);
      }
      loading?.postValue(false);
    } else {
      // notify error message
      baseParams.uiMessage.postValue(UiMessage(
          message: "check_internet_connection", state: UiMessageState.error));
      callback?.call(null, false);
    }
  }
}

/// controlled from you custom widget or [InstanceState]
abstract class LifeCycle {
  /// Called immediately after the widget is allocated in memory.
  void onInit() {}

  /// Called 1 frame after onInit(). It is the perfect place to enter
  /// navigation, events, like snackBar, dialogs, or a new route
  void onReady() {}

  /// Called immediately before the widget is disposed
  void onDispose() {}
}

/// check if device connecting to internet (wifi or mobile-data)
Future<bool> isConnectingToInternet() async {
  final connectivityResult = await (Connectivity().checkConnectivity());
  return connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi;
}
