import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nadrus_student_app/extensions/async_extension.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> cameraPermission() async {
  bool isGranted = await Permission.camera.isGranted;
  if (isGranted) {
    return isGranted;
  } else {
    var status = await Permission.camera.request();
    if (status.isPermanentlyDenied) {
      openSettings("open_settings_messages.camera");
    }
    return status.isGranted;
  }
}

Future<bool> storagePermission() async {
  if (Platform.isAndroid) {
    final androidInfo = await DeviceInfoPlugin().androidInfo;
    final sdkInt = androidInfo.version.sdkInt ?? 28;
    if (sdkInt >= 33) {
      return mediaPermission();
    }
  }
  bool isGranted = await Permission.storage.isGranted;
  if (isGranted) {
    return isGranted;
  } else {
    var status = await Permission.storage.request();
    if (status.isPermanentlyDenied) {
      openSettings("open_settings_messages.storage");
    }
    return status.isGranted;
  }
}

Future<bool> mediaPermission() async {
  bool isGranted = await Permission.photos.isGranted;
  if (isGranted) {
    return isGranted;
  } else {
    var status = await Permission.photos.request();
    if (!status.isGranted) {
      openSettings("open_settings_messages.storage");
    }
    return status.isGranted;
  }
}

Future<bool> locationPermission() async {
  var status = await Permission.location.request();
  if (status.isPermanentlyDenied) {
    openSettings("open_settings_messages.location");
  }
  return status.isGranted;
}

openSettings(String msg) async {
  /// show message
  Fluttertoast.showToast(
    msg: msg.tr(),
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.SNACKBAR,
  );

  /// wait 1.5 second
  Debouncer(delay: const Duration(milliseconds: 1500)).call(() {
    /// open app settings
    openAppSettings();
  });
}
