import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/models/data/teacher_note/teacher_note.dart';

class TeachersNotesParams {
  MutableLiveData<List<TeacherNote>> teacherNotes = MutableLiveData(value: []);
}
