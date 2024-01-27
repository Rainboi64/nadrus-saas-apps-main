import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

Future<String> getDeviceId() async {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  String id = "";
  if (Platform.isAndroid) {
    final deviceInfo = await deviceInfoPlugin.androidInfo;
    id = deviceInfo.fingerprint ?? '';
  } else if (Platform.isIOS) {
    final deviceInfo = await deviceInfoPlugin.iosInfo;
    id = deviceInfo.identifierForVendor ?? '';
  }
  return id;
}
