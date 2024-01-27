import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import "section_details_params.dart";

class SectionDetailsViewModel extends BaseViewModel {
  final _params = Lazy(() => SectionDetailsParams());
  SectionDetailsParams get params => _params.value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }
}
