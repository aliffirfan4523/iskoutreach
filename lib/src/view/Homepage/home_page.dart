import 'dart:ui';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_button/theme_button.dart';

import '../../Splash Screen/splash_screen_animation.dart';
import '../../controller/color_controller.dart';
import '../../controller/theme_controller.dart';
import '../../controller/url_controller.dart';
import '../Animation/lang_change_animation.dart';
import '../Settings/setting_view.dart';
import '../widget/DescribedFeatureOverlay.dart';
import '../widget/menu_button.dart';
import '../widget/side_drawer.dart';
import 'home_page_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final _isLightTheme = themeModeController.isLightTheme;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    @override
    void initState() {
      super.initState();
      /*WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      FeatureDiscovery.discoverFeatures(context, <String>[
          'feature1',
        ]);
      });*/
      ColorController.getColor();
      themeModeController.getThemeStatus();
    }

    @override
    Widget build(BuildContext context) {
      IconData thememodeIcon = _isLightTheme.value
      ? Icons.dark_mode_rounded
      : Icons.light_mode_rounded;
      double height = MediaQuery.of(context).size.height;

      return SafeArea(
        child: ScaffoldMessenger(
          child: Scaffold(
            key: _scaffoldKey,
            drawer: sideDrawer(),
            floatingActionButton: FloatingActionButton.extended(
              onPressed:() {
                launchRegisterUrl();
              },
              label: const Text('Daftar Sekarang', style: TextStyle(color: Colors.white),),
              icon: const Icon(FontAwesome5.arrow_circle_up,color: Colors.white),
              backgroundColor: Colors.indigo.shade900,
              foregroundColor: Colors.indigo.shade600,
            ),
            body: CustomScrollView(
              slivers: <Widget>[
              SliverAppBar(
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 60,
                      height: 40,
                    ),
                    Image.asset(
                      "assets/images/sec_logo.png",
                      width: 100,
                      height: 90,
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    icon: Text(context.locale.languageCode == 'en' ? "MY" : "EN",
                      style: TextStyle(
                        color: _isLightTheme.value ? Colors.black : Colors.white,
                      ),
                    ),
                    onPressed: (){
                      if(context.locale.languageCode == 'en'){
                        final newLocale = const Locale('ms', 'MY');
                        Navigator.pop(context);
                        context.setLocale(newLocale); // change `easy_localization` locale
                        Get.updateLocale(newLocale); // change `Get` locale direction
                        //Get.to(() => LangChangeAnimation(newLocale: newLocale, firstlang: 'Malay', seclang: 'English',),transition: Transition.fadeIn);
                      } else if(context.locale.languageCode == 'ms'){
                        final _newLocale = const Locale('en', 'US');
                        Navigator.pop(context);
                        context.setLocale(_newLocale); // change `easy_localization` locale
                        Get.updateLocale(_newLocale); // change `Get` locale direction
                        //Get.to(() => LangChangeAnimation(newLocale: _newLocale, firstlang: 'English', seclang: 'Malay',),transition: Transition.fadeIn);
                      }
                    },
                  ),/*
                  Padding(
                    padding: const EdgeInsets.only(right:5.0),
                    child: SizedBox(
                      height: 30,
                      width: 60,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(200),
                            bottomRight: Radius.circular(200),
                            topLeft: Radius.circular(200),
                            topRight: Radius.circular(200),
                          ),
                          color: Colors.grey.withOpacity(0.1), 
                        ),
                        child: ThemeButton(
                          height: 30,
                          width: 60,
                          onChanged: (value){
                            toggleTheme(value);
                          },
                        ),
                      ),
                    ),
                  ),*/
                  IconButton(
                    icon: _isLightTheme.value ? Icon(FontAwesome5.moon) : Icon(FontAwesome5.sun),
                    onPressed: () { 
                      toggleTheme(!_isLightTheme.value);
                    },
                  )

                ],
              ),

              SliverToBoxAdapter(
                child: SizedBox(height: MediaQuery.of(context).size.height/20), // Add desired height here
              ),

              SliverAppBar(
                automaticallyImplyLeading: false,
                //backgroundColor: Colors.indigo.shade600,
                expandedHeight: MediaQuery.of(context).size.height * 0.3,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  stretchModes: [
                    StretchMode.zoomBackground,
                    StretchMode.blurBackground,
                    StretchMode.fadeTitle,
                  ],
                  centerTitle: true,
                  title: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10.0,
                          sigmaY: 10.0,
                          ),
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          color: Colors.black.withOpacity(0.6),
                          child: Text(
                            tr("welcome-mainpage"),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  background: HomePageImage()
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: MediaQuery.of(context).size.height*0.02), // Add desired height here
              ),
              SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                  //ISK Outreach app Desc
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                        tr('description'),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: MediaQuery.of(context).size.height*0.02), // Add desired height here
              ),
              //Menu button section
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: MenuButton(),
                ), // Add desired height here
              ),
          ],
    )
  ),
        ),
      );
}
void toggleTheme(bool value) {
  if (!value) {
    _isLightTheme.value = false;
    } else {
      _isLightTheme.value = true;
    }
    setState(() {
      ThemeController.changeThemeMode = _isLightTheme.value;
      });
    Get.changeThemeMode(
      _isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
      );
    themeModeController.saveThemeStatus();
  }
}

