import 'package:flutter/material.dart';
import 'package:nadrus_teacher_app/extensions/live_data_extension.dart';
import 'package:nadrus_teacher_app/models/ui_models/ui_message.dart';

class BaseParams {
  /// request in progress
  final loading = false.liveData;

  /// UI [SnackBar] message
  final uiMessage = UiMessage().liveData;
}
