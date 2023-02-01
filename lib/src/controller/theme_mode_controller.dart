import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeModeController themeModeController = ThemeModeController();

class ThemeModeController{
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

