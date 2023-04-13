import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: Duration(seconds: 5),
      splash: Image.asset('assets/images/splashscreen.gif'),
      nextScreen: const MainPage(),
      centered: true,
      backgroundColor: Colors.indigo.shade600,
    );
  }
}  
