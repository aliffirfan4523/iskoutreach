import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'src/controller/theme_controller.dart';
import 'src/controller/theme_mode_controller.dart';
import 'src/model/homepage_model.dart';
import 'src/provider/homepage_provider.dart';
import 'src/view/CustomError.dart';


void main() async {
  runApp(
  	IskApp()
  );
}

class IskApp extends StatelessWidget {
  const IskApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    	home:  MainPage(),
    	theme: Themes.lightTheme,
      darkTheme: Themes.datkTheme,
      themeMode: ThemeController.theme,
    );
  }
}



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
    		return Scaffold(
    		  body: SafeArea(
            child: SingleChildScrollView(
              child: current_pages[Provider.of<HomePageNotifier>(context).currentPage],
            ),
          ),
    		);    
        /*
        return SideMenu(
          key: sideMenuKey,
          menu: SideMenuPages(),
          type: SideMenuType.slideNRotate,
          child: SafeArea(
              child: current_pages[Provider.of<HomePageNotifier>(context).currentPage],
            ),
        )
        */	  
    	},
		);
  }
  Widget bottomNavigationBar(int index)=>Container(
    height: 50,
    width: 60,
    child: Column(
      children: [
        Icon(Icons.home, size: 30),
        Text("s",),
      ],
    ),
  );
}



