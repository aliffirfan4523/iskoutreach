import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/color_controller.dart';
import '../controller/theme_controller.dart';
import '../controller/theme_mode_controller.dart';
import '../model/text_model.dart';
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
    IconData thememodeIcon =
        _isLightTheme.value ? Icons.dark_mode_rounded : Icons.light_mode_rounded;
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: height -40,
              decoration: BoxDecoration(
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
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade600,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60),
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60),
                            ),
                            
                          ),
                          child: Image.asset(
                          "assets/images/logo.png",
                          width: 130,
                          height: 60,
                          ),
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
                                  Icon(thememodeIcon, color: ColorController.getIconColor()),
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      pause: const Duration(seconds: 5),
                      repeatForever: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Selamat Datang Ke \nISK Outreach',
                          textAlign: TextAlign.center,
                          speed: const Duration(milliseconds: 50),
                          textStyle: GoogleFonts.montserrat(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
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
              bottom: 60,
              right: 15,
              left: 15,
              child: MenuButton(),
            ),
          ],
        ),
      ],
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
