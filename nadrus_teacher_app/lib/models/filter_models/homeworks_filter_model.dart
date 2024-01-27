import 'package:flutterx_live_data/flutterx_live_data.dart';

class HomeworksFilterModel<T> {
  final MutableLiveData<String?> dateFrom = MutableLiveData(value: null);
  final MutableLiveData<String?> dateTo = MutableLiveData(value: null);

  final MediatorLiveData<bool> filterMode = MediatorLiveData(reactive: false);

  HomeworksFilterModel() {
    filterMode.addSource(dateFrom, (value) => _updateFilterMode());
    filterMode.addSource(dateTo, (value) => _updateFilterMode());
  }

  void _updateFilterMode() {
    filterMode.reactive = filterApplied;
  }

  void clear() {
    dateFrom.postValue(null);
    dateTo.postValue(null);
  }

  bool get filterApplied => dateFrom.value != null || dateTo.value != null;
}
