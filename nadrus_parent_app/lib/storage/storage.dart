import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  static SharedPreferences getPreferences() => GetIt.I.get<SharedPreferences>();

  /// config [SharedPreferences] as a global instance.
  ///
  /// call this method in `main.dart` before `runApp()`.
  static Future<void> storageConfig() async {
    try {
      GetIt.I.registerSingleton<SharedPreferences>(
          (await SharedPreferences.getInstance()));
    } catch (_) {}
  }
}
