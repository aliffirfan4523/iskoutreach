import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:iskoutreach/src/view/setting_page.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:get/get.dart';

import 'src/controller/Side_Menu_Controller.dart';
import 'src/controller/theme_controller.dart';
import 'src/controller/theme_mode_controller.dart';
import 'src/view/home_page.dart';

void main() async {
  runApp(
  	GetMaterialApp(
  		home: MainPage(),
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

	Color mainColor = Color.fromARGB(255, 123, 0, 245);
	final List<Widget> _pages = <Widget>[
    const HomePage(isOpened: false,),
    Container(
    	color: Colors.white,
    	child: const Icon(Icons.favorite_rounded)
    ),
    SettingPage(),
    
  ];
  int currentPages = 0;
 

  @override
  void initState(){
  	super.initState();
		themeModeController.getThemeStatus();
  }
	@override
  Widget build(BuildContext context) {
    return SideMenu(
        key: sideMenuKey,
        menu: buildMenu(),
        type: SideMenuType.slideNRotate,
        child: Scaffold(
          body: SafeArea(
				    child: SingleChildScrollView(
				      child: Container(
				      	padding: const EdgeInsets.all(0),
				      	child: _pages[currentPages],
				      ),
				    ),
				  ),
        ),
    );
  }

  Widget buildMenu() {
    return GestureDetector(
    	onTap: () => ToggleMenu(),
    	// onHorizontalDragUpdate: (details) {  
     //    // Note: Sensitivity is integer used when you don't want to mess up vertical drag
     //    int sensitivity = 0;
     //    if (details.delta.dx > sensitivity) {
     //        // Right Swipe

     //    } else if(details.delta.dx < -sensitivity){
     //        //Left Swipe
     //      toggleMenu();

     //    }
    	// },
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 22.0,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "ISK Outreach",
                      style: TextStyle(
												fontWeight: FontWeight.bold,
												color: Colors.white
											),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
									setState(() {
										currentPages = 0;
										ToggleMenu();
										print(currentPages);
									});
                },
                leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
                title: const Text("Home"),
                textColor: Colors.white,
                dense: true,
              ),
              ListTile(
                onTap: () {
                	setState(() {
										currentPages = 1;
										ToggleMenu();
										print(currentPages);

									});
                },
                leading: const Icon(Icons.verified_user,
                    size: 20.0, color: Colors.white),
                title: const Text("Profile"),
                textColor: Colors.white,
                dense: true,

                // padding: EdgeInsets.zero,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.monetization_on,
                    size: 20.0, color: Colors.white),
                title: const Text("Wallet"),
                textColor: Colors.white,
                dense: true,

                // padding: EdgeInsets.zero,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.shopping_cart,
                    size: 20.0, color: Colors.white),
                title: const Text("Cart"),
                textColor: Colors.white,
                dense: true,

                // padding: EdgeInsets.zero,
              ),
              ListTile(
                onTap: () {},
                leading:
                    const Icon(Icons.star_border, size: 20.0, color: Colors.white),
                title: const Text("Favorites"),
                textColor: Colors.white,
                dense: true,

                // padding: EdgeInsets.zero,
              ),
              ListTile(
                onTap: () {
                	setState(() {
										currentPages = 2;
										ToggleMenu();
										print(currentPages);

									});
                	},
                leading:
                    const Icon(Icons.settings, size: 20.0, color: Colors.white),
                title: const Text("Settings"),
                textColor: Colors.white,
                dense: true,

                // padding: EdgeInsets.zero,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



