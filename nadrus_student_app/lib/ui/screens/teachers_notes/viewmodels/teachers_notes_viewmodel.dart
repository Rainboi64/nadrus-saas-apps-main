import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:nadrus_student_app/models/data/teacher_note/teacher_note.dart';
import 'package:nadrus_student_app/repositories/teachers_notes_repository.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../../../../controllers/auth_controller.dart';
import '../../../../models/responses/base_response/base_response.dart';
import "teachers_notes_params.dart";

class TeachersNotesViewModel extends BaseViewModel {
  final _params = Lazy(() => TeachersNotesParams());
  TeachersNotesParams get params => _params.value;

  final _teachersNotesRepository = Lazy(() => TeachersNotesRepository());
  TeachersNotesRepository get teachersNotesRepository =>
      _teachersNotesRepository.value;

  @override
  void onInit() {
    super.onInit();
    getTeachersNotes();
    // called immediately after the widget is allocated in memory.
  }

  @override
  void onDispose() {
    // called immediately before the widget is disposed
    super.onDispose();
  }

  getTeachersNotes() async {
    String id = "";
    baseParams.loading.postValue(true);

    await AuthenticationController.getUser().then((value) {
      if (value.user != null) {
        id = value.user!.id!.toString();
      }
    });

    BaseResponse<List<TeacherNote>> response =
        await teachersNotesRepository.getTeachersNotes(id);

    if (response.data != null) {
      params.teacherNotes.postValue(response.data!);
    }

    baseParams.loading.postValue(false);
  }
}
