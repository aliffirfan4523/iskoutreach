import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller/Side_Menu_Controller.dart';
import '../controller/theme_mode_controller.dart';

class SettingPage extends StatefulWidget {
	const SettingPage ({Key? key}) : super(key: key);
	@override
	_SettingPageState createState() => _SettingPageState();
}

bool isColorChanged = false;

class _SettingPageState extends State<SettingPage> {

	_SettingPageState() {
		themeModeController.getThemeStatus();
	}
	final _isLightTheme = themeModeController.isLightTheme;
	@override
	Widget build(BuildContext context) {
		bool isDark = false;
		return Column(
			children: [
			Padding(
				padding: const EdgeInsets.all(20),
				child: Row(
					mainAxisAlignment: MainAxisAlignment.spaceBetween,
					children: [
					IconButton(
						icon: const Icon(Icons.menu_rounded),
						iconSize: 30,
						onPressed: () {
							ToggleMenu();
							print(isOpened);
							},
						),
					],
					),
				),
			const SizedBox(height: 10),
			ListTile(
				contentPadding: const EdgeInsets.all(20),
				leading: const Icon(Icons.dark_mode),
				title: const Text("Change Mode"),
				trailing: Row(
					mainAxisSize: MainAxisSize.min,
					children: [
						const Icon(
							Icons.dark_mode,
							color: Colors.white,
							),
						ObxValue(
							(data) => Switch(
								value: _isLightTheme.value,
								onChanged: (val) {
									_isLightTheme.value = val;
									Get.changeThemeMode(
										_isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
										);
									themeModeController.saveThemeStatus();
									setState(() {
										isColorChanged = _isLightTheme.value;
										isDark = val;
										print(isDark);				  
										});
									},
									),
							false.obs,
							),
						const Icon(
							Icons.light_mode,
							color: Colors.grey ,
							),
						],
					),
				),
			const Divider(height: 10),
			const ListTile(
				contentPadding: EdgeInsets.all(20),
				leading: Icon(Icons.color_lens_rounded),
				title: Text("Theme Color"),
				),
			],
			);
	}
}