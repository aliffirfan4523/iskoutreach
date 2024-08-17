import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Color mainColor = const Color.fromARGB(255, 123, 0, 245);
ThemeModeController themeModeController = ThemeModeController();

class ThemeController extends GetxController {
  static final box = GetStorage();
  static bool get isDark => box.read('darkmode') ?? false;
  static ThemeMode get theme => isDark ? ThemeMode.dark : ThemeMode.light;
  static bool changeThemeMode = true;
  static Color currentIconColor = Colors.orange;

  void changeTheme() {
    Get.isDarkMode
        ? Get.changeThemeMode(ThemeMode.dark)
        : Get.changeThemeMode(ThemeMode.light);
    currentIconColor = Get.isDarkMode ? Colors.white : Colors.orange;
    box.write('darkmode', Get.isDarkMode);
  }
}

class ThemeModeController {
  RxBool isLightTheme = false.obs;
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  saveThemeStatus() async {
    SharedPreferences pref = await _prefs;
    pref.setBool('theme', isLightTheme.value);
  }

  getThemeStatus() async {
    var _isLight = _prefs.then((SharedPreferences prefs) {
      return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
    }).obs;
    isLightTheme.value = (await _isLight.value)!;
    Get.changeThemeMode(isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
  }
}

class Themes {
  static final lightTheme = ThemeData(
      colorScheme: ColorScheme.light(
        primary: mainColor,
        secondary: mainColor,
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      brightness: Brightness.light,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      textTheme: getTextTheme());

  static final datkTheme = ThemeData(
      brightness: Brightness.dark,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      textTheme: getTextTheme());

  static TextTheme getTextTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontSize: 24,
      ),
      displayMedium: TextStyle(
        fontSize: 36,
      ),
      displaySmall: TextStyle(
        fontSize: 32,
      ),
      headlineMedium: TextStyle(
        fontSize: 38,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
      ),
    );
  }
}
