import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_teacher_app/repositories/classes_repository.dart';
import 'package:nadrus_teacher_app/viewmodels/base_viewmodel.dart';

import "create_session_params.dart";

class CreateSessionViewModel extends BaseViewModel {
  final _params = Lazy(() => CreateSessionParams());
  CreateSessionParams get params => _params.value;

  final _classesRepository = Lazy(() => ClassesRepository());
  ClassesRepository get classesRepository => _classesRepository.value;

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
