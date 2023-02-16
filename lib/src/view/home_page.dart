import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/theme_controller.dart';
import '../controller/theme_mode_controller.dart';
import '../model/text_model.dart';
import 'widget/menu_button.dart';

final _isLightTheme = themeModeController.isLightTheme;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    IconData thememodeIcon =
        _isLightTheme.value ? Icons.light_mode : Icons.dark_mode;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 400,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset:
                            const Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.indigo.shade400,
                          Colors.indigo.shade900,
                        ]),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //image logo
                            Image.asset(
                              "assets/images/logo.png",
                              width: 130,
                              height: 60,
                            ),
                            //theme button
                            Stack(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                ),
                                IconButton(
                                  icon:
                                      Icon(thememodeIcon, color: Colors.white),
                                  onPressed: () => toggleTheme(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      AnimatedTextKit(
                        isRepeatingAnimation: true,
                        pause: const Duration(seconds: 3),
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Selamat Datang Ke \nISK Outreach',
                            textAlign: TextAlign.center,
                            speed: const Duration(milliseconds: 50),
                            textStyle: GoogleFonts.montserrat(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
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
                const Positioned(
                  top: 220,
                  right: 15,
                  left: 15,
                  child: MenuButton(),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: const Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.indigo.shade400,
                    Colors.indigo.shade900,
                  ]),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5, bottom: 30),
                  child: Text(
                    introduction,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
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
