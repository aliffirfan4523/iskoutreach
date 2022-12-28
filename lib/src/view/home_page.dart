import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iskoutreach/src/controller/Side_Menu_Controller.dart';

import '../../main.dart';
import '../controller/url_controller.dart';

class HomePage extends StatefulWidget {
  final bool isOpened;

  const HomePage({required this.isOpened, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
    	ignoring: widget.isOpened,
      child: Column(
      	children: [
      	Padding(
      		padding: const EdgeInsets.all(20),
      		child: Row(
      			mainAxisAlignment: MainAxisAlignment.spaceBetween,
      			children: [
	      			IconButton(
	      				icon: Icon(Icons.menu_rounded),
	      				iconSize: 30,
	      				onPressed: () {
	      					ToggleMenu();
	      					print(toggleMenu.isOpened);
	      				},
	      			),
	      			Container(
	      				decoration: BoxDecoration(
	      					color: Color.fromARGB(255, 123, 0, 245),
	      					borderRadius: BorderRadius.circular(10.0),
	      					),
	      				child: TextButton(
	      					onPressed: () => launchURL(),
	      					child: Text('Daftar Sekarang',
	      						style: TextStyle(
	      							fontSize: 13.0)
	      						),
	      					),
	      				),
      				],
      			),
      		),
				SizedBox(height: 10),
				Container(
					margin: EdgeInsets.only(top: 20, bottom: 20),
					child: Padding(
						padding: const EdgeInsets.only(left: 20,top: 20, bottom: 20),
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
							AnimatedTextKit(
								isRepeatingAnimation: true,
								pause: Duration(seconds: 3),
								repeatForever: true,
								animatedTexts: [
								TypewriterAnimatedText('Selamat Datang Ke ISK Outreach',
									textAlign: TextAlign.center,
									speed: Duration(milliseconds: 50),
									textStyle: GoogleFonts.montserrat(
										fontSize: 22,
										fontWeight: FontWeight.w600,
										),
									),
								TypewriterAnimatedText('ISK Outreach',
									textAlign: TextAlign.left,
									speed: Duration(milliseconds: 50),
									textStyle: GoogleFonts.montserrat(
										fontSize: 25,
										fontWeight: FontWeight.w600,
										),
									),
								],
								onTap: () {
									print("Tap Event");
									},
									),
							],
							),
						),
					),
      	SizedBox(height: 200),
      	Container(
      		width: double.infinity,
      		height: 600,
      		decoration: BoxDecoration(
      			color: Color.fromARGB(255, 123, 0, 245),
      			borderRadius: BorderRadius.only(
      				topLeft: Radius.circular(30),
      				topRight: Radius.circular(30),
      				),
      			),
      		child: Column(
      			mainAxisAlignment: MainAxisAlignment.start,
      			children: [
	    			Text(
	    				"Total Donasi",
	    				style: GoogleFonts.montserrat(
	    					fontSize: 25,
	    					),
	    				),
	    			SizedBox(height: 10),
	    			Text(
	    				"RM 1000",
	    				style: GoogleFonts.montserrat(
	    					fontSize: 30,
	    					fontWeight: FontWeight.w600,
	    					),
	    				),
	    			SizedBox(height: 10),
	    			Text(
	    				"Dari 100 Donatur",
	    				style: GoogleFonts.montserrat(
	    					fontSize: 15,
	    					),
	    				),
	    			],
      			),
      		),
      	],
      ),
    );
  }
}