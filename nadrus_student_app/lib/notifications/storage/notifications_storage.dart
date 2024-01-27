import '../../storage/secure_storage.dart';
import '../device_info_utils/device_details_model.dart';

class NotificationsStorage {
  static const deviceIdKey = "deviceId";
  static const deviceTokenKey = "deviceToken";
  static const devicePlatformKey = "devicePlatform";

  /// Storing Device ID Securely in Local Storage
  static _setDeviceId(String value) {
    SecureStorage.write(key: deviceIdKey, value: value);
  }

  /// Storing Device Token Securely in Local Storage
  static _setDeviceToken(String value) {
    SecureStorage.write(key: deviceTokenKey, value: value);
  }

  /// Storing Device Platform Securely in Local Storage
  static _setDevicePlatform(String value) {
    SecureStorage.write(key: devicePlatformKey, value: value);
  }

  /// Storing Device Details [Device ID, Token, Platform] Securely in Local Storage
  static setDeviceDetails({
    required String deviceId,
    required String deviceToken,
    required String devicePlatform,
  }) {
    _setDeviceId(deviceId);
    _setDeviceToken(deviceToken);
    _setDevicePlatform(devicePlatform);
  }

  /// Removing Device Details [Device ID, Token, Platform] Securely in Local Storage
  static removeDeviceDetails() async {
    await SecureStorage.delete(deviceIdKey);
    await SecureStorage.delete(deviceTokenKey);
    await SecureStorage.delete(devicePlatformKey);
  }

  ///Reading Device ID from Local Storage
  static Future<String?> _getDeviceId() async {
    return await SecureStorage.read(key: deviceIdKey);
  }

  ///Reading Device Token from Local Storage
  static Future<String?> _getDeviceToken() async {
    return await SecureStorage.read(key: deviceTokenKey);
  }

  ///Reading Device Platform from Local Storage
  static Future<String?> _getDevicePlatform() async {
    return await SecureStorage.read(key: devicePlatformKey);
  }

  ///Reading Device Details from Local Storage
  static Future<DeviceDetails> getDeviceDetails() async {
    String id = await _getDeviceId() ?? '';
    String token = await _getDeviceToken() ?? '';
    String platform = await _getDevicePlatform() ?? '';
    DeviceDetails deviceDetails =
        DeviceDetails(id: id, token: token, platform: platform);
    return deviceDetails;
  }
}
