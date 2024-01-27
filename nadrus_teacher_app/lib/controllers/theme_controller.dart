import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/instance_config.dart';
import '../events/bus_events.dart';
import '../extensions/live_data_extension.dart';
import '../extensions/nullable_extension.dart';
import '../ui/resources/themes/themes.dart';
import '../ui/resources/themes/themes_night.dart';

class ThemeController {
  final themeMode = ThemeMode.light.liveData;
  ThemeData get theme =>
      themeMode.value == ThemeMode.dark ? darkTheme : lightTheme;

  SharedPreferences getPreferences() => findInstance<SharedPreferences>();

  init() {
    putInstance<ThemeController>(this);
    getThemeMode();
  }

  Future<void> changeThemeMode(ThemeMode mode) async {
    await getPreferences().setBool('dark_theme', mode == ThemeMode.dark);
    themeMode.postValue(mode);
    eventBus.fire(const ThemeChangedEvent());
  }

  ThemeMode getThemeMode() {
    bool? darkMode = getPreferences().getBool('dark_theme');
    darkMode?.let(
        (it) => themeMode.postValue(it ? ThemeMode.dark : ThemeMode.light));
    return themeMode.value;
  }
}
