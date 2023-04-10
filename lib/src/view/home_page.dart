import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iskoutreach/src/view/widget/rounded_image.dart';

import '../controller/color_controller.dart';
import '../controller/theme_controller.dart';
import '../controller/theme_mode_controller.dart';
import '../model/text_model.dart';
import 'widget/bottom_sheet.dart';
import 'widget/menu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _isLightTheme = themeModeController.isLightTheme;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    IconData thememodeIcon = _isLightTheme.value
        ? Icons.dark_mode_rounded
        : Icons.light_mode_rounded;
    double height = MediaQuery.of(context).size.height;
    var welcome = tr('welcome-mainpage');
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: height - 50,

              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TopNavBar(thememodeIcon),
                  const SizedBox(
                    height: 10,
                  ),

                  //Welcome to ISK Outreach
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      pause: const Duration(seconds: 5),
                      repeatForever: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          welcome,
                          textAlign: TextAlign.center,
                          speed: const Duration(milliseconds: 50),
                          textStyle: GoogleFonts.montserrat(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //ISK Outreach app Desc
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      pause: const Duration(seconds: 5),
                      repeatForever: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          introduction,
                          textAlign: TextAlign.center,
                          speed: const Duration(milliseconds: 50),
                          textStyle: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Image slider
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 2,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                    ),
                    items: homepageimageslider,
                  ),

                  //Spacing
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            /*
            * error shape
            RoundShapeBackground(
              top: 91,
              right: -70,
              size: 200,
            ),
            RoundShapeBackground(
              top: -127,
              right: 40,
              size: 200,
            ),
            RoundShapeBackground(
              top: -50,
              left: -50,
              size: 150,
            ),
            RoundShapeBackground(
              top: 135,
              left: -70,
              size: 200,
            ),
            */
            //Menu button section
            const Positioned(
              bottom: 50,
              right: 15,
              left: 15,
              child: MenuButton(),
            ),
          ],
        ),
      ],
    );
  }

  Padding TopNavBar(IconData thememodeIcon) {
    return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //image logo
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade600,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(60),
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/logo.png",
                              width: 40,
                              height: 40,
                            ),
                            Image.asset(
                              "assets/images/sec_logo.png",
                              width: 130,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                      //theme button
                      Row(
                        children: [
                          PopupMenuButton<int>(
                            itemBuilder: (context) => [
                              // PopupMenuItem 1
                              PopupMenuItem( 
                                value: 1,
                                // row with 2 children
                                child: Row(
                                  children: [
                                    Icon(Icons.language_rounded, color: Colors.white),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Tukar Bahasa", style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),
                              // PopupMenuItem 2
                              PopupMenuItem(
                                value: 2,
                                // row with two children
                                child: Row(  
                                  children: [
                                    Icon(thememodeIcon, color: Colors.white),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Change Theme", style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                            ],
                            offset: Offset(0, 100),
                            color: Colors.indigo.shade600,
                            elevation: 2,
                            // on selected we show the dialog box
                            onSelected: (value) {
                              // if value 1 show dialog
                              if (value == 1) {
                                showAdaptiveActionSheet(
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  bottomSheetColor: Colors.indigo.shade600,
                                 context: context,
                                 actions: <BottomSheetAction>[
                                    BottomSheetAction(title: Text("Bahasa Melayu", style: TextStyle(color: Colors.white)), onPressed: (context) {
                                      
                                      setState(() {
                                        EasyLocalization.of(context)!.setLocale(Locale('ms'));
                                        });
                                      Navigator.pop(context);
                                    }),
                                    BottomSheetAction(title: Text("English", style: TextStyle(color: Colors.white)), onPressed: (context) {
                                      
                                      setState(() {
                                        EasyLocalization.of(context)!.setLocale(Locale('en'));
                                        });
                                      Navigator.pop(context);
                                      }),
                                 ],
                                 cancelAction: CancelAction(title: Text("Cancel", style: TextStyle(color: Colors.red.shade400))),// onPressed parameter is optional by default will dismiss the ActionSheet
                                );
                                // if value 2 show dialog
                              } else if (value == 2) {
                                toggleTheme();
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
  }

  void toggleTheme() {
    if (_isLightTheme.value == true) {
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
