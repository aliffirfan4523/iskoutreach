import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:get/get.dart';
import 'src/controller/theme_controller.dart';
import 'src/controller/theme_mode_controller.dart';
import 'src/model/homepage_model.dart';
import 'src/provider/homepage_provider.dart';
import 'src/view/sideMenu/side_menu.dart';


void main() async {
  runApp(
  	GetMaterialApp(
  		home:  MainPage(),
  		theme: Themes.lightTheme,
      darkTheme: Themes.datkTheme,
      themeMode: ThemeController.theme,
  	)
  );
}

GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();



class MainPage extends StatefulWidget {
	const MainPage ({Key? key}) : super(key: key);
	
	@override
	_MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
	Color mainColor = const Color.fromARGB(255, 123, 0, 245);


  @override
  void initState(){
  	super.initState();
		themeModeController.getThemeStatus();
  }
	@override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
    	create: (_) => HomePageNotifier(currentPage: 0),
    	builder: (context, child) {
    		return SideMenu(
          key: sideMenuKey,
          menu: SideMenuPages(),
          type: SideMenuType.slideNRotate,
          child: SafeArea(
              child: current_pages[Provider.of<HomePageNotifier>(context).currentPage],
            ),
      	);    	  
    	},
		);
  }
}



