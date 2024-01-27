import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import "school_details_params.dart";

class SchoolDetailsViewModel extends BaseViewModel {
  final _params = Lazy(() => SchoolDetailsParams());
  SchoolDetailsParams get params => _params.value;

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
}
