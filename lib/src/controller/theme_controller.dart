import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Color mainColor = Color.fromARGB(255, 123, 0, 245);
class ThemeController extends GetxController {
  static final box = GetStorage();
  static bool get isDark => box.read('darkmode') ?? false;
  static ThemeMode get theme => isDark ? ThemeMode.dark : ThemeMode.light ;
  static bool changeThemeMode = true;
  static Color currentIconColor = Colors.orange;


  void changeTheme() {
    Get.isDarkMode ? Get.changeThemeMode(ThemeMode.dark) : Get.changeThemeMode(ThemeMode.light);
    currentIconColor = Get.isDarkMode ? Colors.white :  Colors.orange;
    box.write('darkmode', Get.isDarkMode);
  }
}

class Themes {

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: mainColor,
      secondary: mainColor,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color(0xFF0C0C0F),
      ),
    ),
    brightness: Brightness.light,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: getTextTheme()
  );
  
  static final datkTheme = ThemeData(
    brightness: Brightness.dark,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color(0xFFF5F0F0),
      ),
    ),
    textTheme: getTextTheme()
  );

  static TextTheme getTextTheme() {

    return TextTheme(
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


