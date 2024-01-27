import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import "exams_to_correct_params.dart";

class ExamsToCorrectViewModel extends BaseViewModel {
  final _params = Lazy(() => ExamsToCorrectParams());
  ExamsToCorrectParams get params => _params.value;

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
