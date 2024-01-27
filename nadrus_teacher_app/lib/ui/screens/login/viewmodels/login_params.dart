import 'package:nadrus_teacher_app/extensions/live_data_extension.dart';

import '../../../../models/formz/formz_text.dart';
import '../../../../models/ui_models/ui_message.dart';

class LoginParams {
  /// username text field
  final username = const FormzText.pure("").liveData; //"yahyahoush"

  /// password text field
  final password = const FormzText.pure("").liveData; //"password"

  /// form enabled for submit
  final submit = false.liveData;

  /// request in progress
  final loading = false.liveData;

  /// UI [SnackBar] message
  final uiMessage = UiMessage().liveData;
}
