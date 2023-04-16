import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iskoutreach/src/Splash%20Screen/splash_screen_animation.dart';

import '../view/Homepage/home_page.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return AnimatedSplashScreen(
      animationDuration: Duration(seconds: 5),
      splash: Image.asset('assets/images/splashscreen.gif'),
      nextScreen: const HomePage(),
      splashIconSize: 350,
      centered: true,
      backgroundColor: Colors.indigo.shade600,
      //splashTransition: SplashTransition.fadeTransition,
      duration: 2000
    );
  }
}  
