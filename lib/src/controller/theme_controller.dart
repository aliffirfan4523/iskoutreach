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
    Get.isDarkMode ? Get.changeThemeMode(ThemeMode.light) : Get.changeThemeMode(ThemeMode.dark);
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
    textTheme: TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor:  Color(0xFF0C0C0F), 
      displayColor: Colors.blue, 
    ),
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
    textTheme: TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: Color(0xFFF5F0F0), 
      displayColor: Colors.blue, 
    ),  
  );
}


