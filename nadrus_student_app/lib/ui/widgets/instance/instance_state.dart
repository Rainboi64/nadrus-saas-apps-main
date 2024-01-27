import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:nadrus_student_app/config/instance_config.dart';
import 'package:nadrus_student_app/models/ui_models/ui_message.dart';
import 'package:nadrus_student_app/viewmodels/base_viewmodel.dart';

import '../snackbar.dart';
import 'instance_builder.dart';

/// Create a global instance when widget state initialized,
/// and remove the instance when widget destroyed.
///
/// this make you can access the same instance from your widget children without pass any variables.
///
/// just wrap your child widget in [InstanceBuilder].
mixin InstanceState<T extends StatefulWidget, VM extends BaseViewModel>
    on State<T> implements ObserverMixin {
  late VM instance;

  String? instanceName;

  /// new instance from you class.
  VM registerInstance();

  /// callback when widget initialized.
  void onInitState(VM instance) {}

  /// Called 1 frame after onInit(). It is the perfect place to enter
  /// navigation, events, like snackBar, dialogs, or a new route
  void onReady(VM instance) {}

  /// callback when widget destroyed.
  void onDispose() {}

  /// observe on live data variables
  void observeLiveData(ObserverMixin observer, VM instance) {}

  @override
  void initState() {
    instance = registerInstance();
    putInstance<VM>(instance, instanceName: instanceName);
    onInitState(instance);
    instance.onInit();
    super.initState();
    doRegister();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onReady(instance);
      instance.onReady();
    });
  }

  @override
  FutureOr<void> registerObservers() {
    observeLiveData(this, instance);
    instance.baseParams.uiMessage.observe(this, _handleUiMessage);
  }

  @override
  void dispose() {
    onDispose();
    instance.onDispose();
    doUnregister();
    destroyInstance<VM>(instanceName: instanceName);
    super.dispose();
  }

  /// handle uiMessage
  void _handleUiMessage(UiMessage uiMessage) {
    if (uiMessage.message != null) {
      Color? backgroundColor;
      switch (uiMessage.state) {
        case UiMessageState.success:
          backgroundColor = Colors.green;
          break;
        case UiMessageState.error:
          backgroundColor = Colors.red;
          break;
        default:
          break;
      }
      showSnackBar(
        context: context,
        message: uiMessage.message!,
        backgroundColor: backgroundColor,
      );
      uiMessage.message = null;
    }
  }

  /// callback which wrap your widgets
  Widget screen(BuildContext context, VM instance);

  @override
  Widget build(BuildContext context) {
    return screen(context, instance);
  }
}
