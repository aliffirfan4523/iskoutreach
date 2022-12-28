import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:iskoutreach/src/view/homePage_background.dart';
import 'package:iskoutreach/src/view/setting_page.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'src/controller/Side_Menu_Controller.dart';
import 'src/controller/theme_controller.dart';
import 'src/controller/theme_mode_controller.dart';
import 'src/model/homepage_model.dart';
import 'src/view/home_page.dart';
import 'src/view/sideMenu/side_menu.dart';


void main() async {
  runApp(
  	GetMaterialApp(
  		home: const MainPage(),
  		theme: Themes.lightTheme,
      darkTheme: Themes.datkTheme,
      themeMode: ThemeController.theme,
  	)
  );
}

class MainPage extends StatefulWidget {
	const MainPage ({Key? key}) : super(key: key);

	@override
	_MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
	final GlobalKey<_MainPageState> _myKey = GlobalKey();

	Color mainColor = const Color.fromARGB(255, 123, 0, 245);

  @override
  void initState(){
  	super.initState();
		themeModeController.getThemeStatus();
  }
	@override
  Widget build(BuildContext context) {
    return SideMenu(
        key: sideMenuKey,
        menu: SideMenuPages(),
        type: SideMenuType.slideNRotate,
        child: Scaffold(
          body: SafeArea(
				    child: SingleChildScrollView(
				      child: Container(
				      	padding: const EdgeInsets.all(0),
				      	child: CurrentShowPages(),
				      ),
				    ),
				  ),
        ),
    );
  }
}



