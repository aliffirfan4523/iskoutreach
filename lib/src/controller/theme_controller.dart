import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Color mainColor = Color.fromARGB(255, 123, 0, 245);
class ThemeController extends GetxController {
  static final box = GetStorage();
  static bool get isDark => box.read('darkmode') ?? false;
  static ThemeMode get theme => isDark ? ThemeMode.dark : ThemeMode.light ;

  void changeTheme() {
    Get.isDarkMode ? Get.changeThemeMode(ThemeMode.light) : Get.changeThemeMode(ThemeMode.dark);
    box.write('darkmode', Get.isDarkMode);
    print(Get.isDarkMode);
  }
}

class Themes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    );
  static final datkTheme = ThemeData(
    brightness: Brightness.dark,
    );
}

