import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {

  SplashScreen({super.key});

  SplasScreenController splashScreenController = Get.put(SplasScreenController());
  double height = Get.height; 
  double width = Get.width;

  @override
  Widget build(BuildContext context) {
  	splashScreenController.startAnimation();
    return Scaffold(
    	appBar: AppBar(
    		leading: IconButton(
					icon: const Icon(Icons.arrow_left),
					onPressed: () {
						Navigator.pop(context);
					},
				),
    	),
    	body: Stack(
				children: [
					AnimatedPositioned(
						duration: Duration(milliseconds: 1600),
						top: splashScreenController.animate.value ? height / 3 -100 : -10,
						left:  splashScreenController.animate.value ? width / 3 : -10,
						child: AnimatedOpacity(
							opacity: splashScreenController.animate.value ? 1 : 0,
							duration: Duration(milliseconds: 1600),
							child: Text(
								"ISK OutReach",
								style: Theme.of(context).textTheme.headline5,
							),
						),
					),
				],
			),
    );
  }
}