import 'dart:ui';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
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
import '../widget/menu_button.dart';
import '../widget/side_drawer.dart';
import 'home_page_image.dart';
import 'homepage_gridview.dart';

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
    final List<String> items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
      'Item 6',
      'Item 7',
      'Item 8',
    ];

    IconData thememodeIcon = _isLightTheme.value
        ? Icons.dark_mode_rounded
        : Icons.light_mode_rounded;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: ScaffoldMessenger(
          child: Scaffold(
              key: _scaffoldKey,
              drawer: sideDrawer(),
              body: Scrollbar(
                interactive: true,
                thickness: 10.0,
                radius: const Radius.circular(5.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const SizedBox(
                          height: 500,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFFB5509),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          height: screenHeight * 0.23,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Column(
                          children: [
                            AppBar(
                              centerTitle: true,
                              leading: IconButton(
                                color: Colors.white,
                                icon: const Icon(Icons.menu),
                                onPressed: () {
                                  _scaffoldKey.currentState?.openDrawer();
                                },
                              ),
                              /*title: Text(
                                "KSK Outreach",
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),*/
                              actions: [
                                IconButton(
                                  padding: const EdgeInsets.only(right: 20),
                                  icon: Text(
                                    context.locale.languageCode == 'en'
                                        ? "MY"
                                        : "EN",
                                    style: TextStyle(
                                      color: _isLightTheme.value
                                          ? Colors.white
                                          : Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    if (context.locale.languageCode == 'en') {
                                      final newLocale =
                                          const Locale('ms', 'MY');
                                      Navigator.pop(context);
                                      context.setLocale(
                                          newLocale); // change `easy_localization` locale
                                      Get.updateLocale(
                                          newLocale); // change `Get` locale direction
                                      //Get.to(() => LangChangeAnimation(newLocale: newLocale, firstlang: 'Malay', seclang: 'English',),transition: Transition.fadeIn);
                                    } else if (context.locale.languageCode ==
                                        'ms') {
                                      final _newLocale =
                                          const Locale('en', 'US');
                                      Navigator.pop(context);
                                      context.setLocale(
                                          _newLocale); // change `easy_localization` locale
                                      Get.updateLocale(
                                          _newLocale); // change `Get` locale direction
                                      //Get.to(() => LangChangeAnimation(newLocale: _newLocale, firstlang: 'English', seclang: 'Malay',),transition: Transition.fadeIn);
                                    }
                                  },
                                ),
                                /*
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
                                  color: Colors.white,
                                  padding: const EdgeInsets.only(right: 20),
                                  icon: _isLightTheme.value
                                      ? const Icon(FontAwesome5.moon)
                                      : const Icon(FontAwesome5.sun),
                                  onPressed: () {
                                    toggleTheme(!_isLightTheme.value);
                                  },
                                )
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 0.0,
                                left: 50,
                              ),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                tr("welcome-mainpage"),
                                style: const TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, left: 30, right: 30),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: SizedBox(
                                  height: screenHeight * 0.22,
                                  child: HomePageImage(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: AutoSizeText(
                                tr('description'),
                                maxFontSize: 20,
                                minFontSize: 16,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const Divider(
                              indent: 20,
                              endIndent: 20,
                            ),
                            HomepageGridview()
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ))),
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
