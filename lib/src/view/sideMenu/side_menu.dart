
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iskoutreach/src/view/homePage_background.dart';

import '../../controller/Side_Menu_Controller.dart';
import '../../controller/theme_mode_controller.dart';
import '../../model/homepage_model.dart';

class SideMenuPages extends StatefulWidget {
  SideMenuPages({super.key});


  @override
  State<SideMenuPages> createState() => _SideMenuPagesState();
}

class _SideMenuPagesState extends State<SideMenuPages> {

  final _isLightTheme = themeModeController.isLightTheme;
  CurrentShowPages currentShowPages = CurrentShowPages();

  @override
  Widget build(BuildContext context) {
    bool changeThemeMode = true;
    dynamic thememodeIcon =_isLightTheme.value? Icons.light_mode : Icons.dark_mode;
    return Stack(
      fit: StackFit.loose,
      children: [
      currentBackground(),
      GestureDetector(
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 22.0,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        "ISK Outreach",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                  setState(() {
                    currentShowPages.currentPages = 0;
                    ToggleMenu();
                    print(currentShowPages.currentPages);
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
                    currentShowPages.currentPages = 1;
                    ToggleMenu();
                    print(currentShowPages.currentPages);

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
           //      ListTile(
           //        onTap: () {
           //         setState(() {
                  //  currentPages = 2;
                  //  ToggleMenu();
                  //  print(currentPages);

                  // });
           //         },
           //        leading:
           //            const Icon(Icons.settings, size: 20.0, color: Colors.white),
           //        title: const Text("Settings"),
           //        textColor: Colors.white,
           //        dense: true,

           //        // padding: EdgeInsets.zero,
           //      ),
                ListTile(
                  onTap: () {
                    if(_isLightTheme.value==true){
                      _isLightTheme.value = false;
                    } 
                    else{
                      _isLightTheme.value =true;
                    }
                    setState(() {
                      changeThemeMode =  _isLightTheme.value;                 
                    });
                    print(_isLightTheme.value);
                    Get.changeThemeMode(
                        _isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
                        );
                      themeModeController.saveThemeStatus();
                  },
                  title: const Text("Click To Change \nTheme Mode",),
                  leading: Icon(thememodeIcon, color: Colors.white,),
                  textColor: Colors.white,
                  dense: true,
                ),
              ],
            ),
          ),
        ),
      ),
      ],
    );
  }

  Widget currentBackground() => _isLightTheme.value ? morningBackground() : nightBackground();
  
}