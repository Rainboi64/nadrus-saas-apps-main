import 'package:flutterx_live_data/flutterx_live_data.dart';

import 'async_extension.dart';

extension LiveDataUtils<T> on LiveData<T> {
  /// Ignore all changes in [callback] during [duration] (0.5 sec by default)
  /// and sends the last value after [duration]
  ObserverWrapper<T> debounce(void Function(T) callback,
      {Duration duration = const Duration(milliseconds: 500)}) {
    final debouncer = Debouncer(delay: duration);
    void onChange(value) => debouncer(() => callback(value));
    ObserverWrapper<T>? observerWrapper =
        ObserverWrapper<T>(onChange, Dispatcher.postFrame);
    addObserverWrapper(observerWrapper);
    return observerWrapper;
  }
}

extension Utils<T> on T {
  /// create new [MutableLiveData] instance with initialValue from passed variable value
  MutableLiveData<T> get liveData => MutableLiveData<T>(value: this);

  /// create new [LiveResult] instance with initialValue [ResultState.idle]
  LiveResult<T> get liveResult => LiveResult();

  /// create new [MediatorMutableLiveData] instance with initialValue from passed variable value
  MediatorMutableLiveData<T> get mediatorLiveData =>
      MediatorMutableLiveData<T>(value: this);
}
