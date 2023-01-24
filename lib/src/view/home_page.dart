
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controller/theme_controller.dart';
import '../controller/theme_mode_controller.dart';
import '../controller/url_controller.dart';
import '../provider/homepage_provider.dart';
import 'name_card/example_name_card.dart';
import 'name_card/name_card.dart';

final _isLightTheme = themeModeController.isLightTheme;


class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
	
	@override
	Widget build(BuildContext context) {
	  IconData thememodeIcon =_isLightTheme.value? Icons.light_mode : Icons.dark_mode;
		double width = MediaQuery.of(context).size.width;
		double height = MediaQuery.of(context).size.height;

		return Container(
		  child: Column(
		  	mainAxisAlignment: MainAxisAlignment.start,
		  	crossAxisAlignment: CrossAxisAlignment.start,
		  	children: [
		  		SizedBox(
		  			height: 400,
		  		  child: Stack(
		  		    children: [
		  		      Container(
		  		      	width: double.infinity,
		  		      	height: 300,
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
		  		      		gradient: const LinearGradient(
		  		      			begin: Alignment.topLeft,
		  		      			end: Alignment.bottomRight,
		  		      			colors: [
		  		      				Color(0xFF0075FF),
		  		      				Color(0xFF035671),
		  		      			]
		  		      		),
		  		      		borderRadius: const BorderRadius.only(
		  		      			bottomLeft: Radius.circular(60),
		  		      			bottomRight: Radius.circular(60),
		  		      			),
		  		      		),
		  		      	child: Padding(
		  		      	  padding: const EdgeInsets.only(top:20.0,left: 20, right: 20),
		  		      	  child: Column(
		  		      	    children: [
		  		      	      Row(
		  		      	      	crossAxisAlignment: CrossAxisAlignment.start,
		  		      	      	mainAxisAlignment: MainAxisAlignment.spaceBetween,
		  		      	      	children: [
					  		      	  	Image.asset("images/logo.png", width: 130,height: 60,),
					  		      	  	IconButton(
					  		      	  		hoverColor: Colors.grey,
							  		      	  		padding: EdgeInsets.only(left: 40, right: 60),
							  		      	  		onPressed: (){
							  		      	  			if(_isLightTheme.value==true){
							  		      	  	      _isLightTheme.value = false;
							  		      	  	    } 
							  		      	  	    else{
							  		      	  	      _isLightTheme.value =true;
							  		      	  	    }
							  		      	  	    setState(() {
							  		      	  	      ThemeController.changeThemeMode =  _isLightTheme.value;                 
							  		      	  	     });
							  		      	  	    print(_isLightTheme.value);
							  		      	  	    Get.changeThemeMode(
							  		      	  	      _isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
							  		      	  	      );
							  		      	  	    themeModeController.saveThemeStatus();
							  		      	  		}, icon: Icon(thememodeIcon, color: Colors.white),
							  		      	  	),
							  		      	  	TextButton(
							  		      	  		onPressed: () => launchURL(), 
							  		      	  		child: const Text("Daftar Sekarang"),
							  		      	  		style: TextButton.styleFrom(
							  		      	  			backgroundColor: ThemeController.changeThemeMode? Colors.white: Colors.black,
							  		      	  			elevation: 2,

							  		      	  		),
							  		      	  	)
		  		      	      	],
		  		      	      ),
		  		      	      SizedBox(height: 30,),
		  		      	      AnimatedTextKit(
													isRepeatingAnimation: true,
													pause: const Duration(seconds: 3),
													repeatForever: true,
													animatedTexts: [
													TypewriterAnimatedText('Selamat Datang Ke \nISK Outreach',
														textAlign: TextAlign.center,
														speed: const Duration(milliseconds: 50),
														textStyle: GoogleFonts.montserrat(
															fontSize: 22,
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
		  		      RoundShapeBackground(top: 91, right: -70, size: 200,),
		  		      RoundShapeBackground(top: -127, right: 10, size: 200,),
		  		      RoundShapeBackground(top: -50, left: -50, size: 150,),
		  		      RoundShapeBackground(top: 135, left: -70, size: 200,),
		  		      Positioned(
		  		      	top: 220,
		  		      	left: 20,
		  		      	right: 20,
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
		  				gradient: const LinearGradient(
		  					begin: Alignment.topLeft,
		  					end: Alignment.bottomRight,
		  					colors: [
		  						Color(0xFF0075FF),
		  		      	Color(0xFF035671),
		  					]
		  				),
		  				borderRadius: const BorderRadius.all(Radius.circular(30)),
		  			),
		  			child: Column(
		  				children: [
		  					Padding(
		  						padding: const EdgeInsets.only(left: 30, top: 5, bottom: 30),
		  						child: Text(
		  							"Ini merupakan sebuah aplikasi yang menyediakan maklumat berkenaan kursus Teknologi Sistem Komputer Dan Maklumat di Kolej Vokasional Sungai Buloh",
		  							style: GoogleFonts.poppins(
		  								fontWeight: FontWeight.normal,
		  								fontSize: 15,
		  							),
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
}

class RoundShapeBackground extends StatelessWidget {
   RoundShapeBackground({
    Key? key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    this.size,
  }) : super(key: key);

  double? top;
  double? left;
  double? right;
  double? bottom;
  double? size = 150;
  @override
  Widget build(BuildContext context) {
    return Positioned(
    	top: top,
    	left: left,
    	right: right,
    	bottom: bottom,
    	child: Container(
    		width: size,
    		height: size,
    		decoration: BoxDecoration(
    			color: Colors.white.withOpacity(0.5),
    			borderRadius: BorderRadius.circular(300),
    			backgroundBlendMode: BlendMode.color,
    			gradient: const LinearGradient(
		  			begin: Alignment.centerLeft,
		 				end: Alignment.centerRight,
		 				colors: [
		  				Color(0xBF00FFF0),
			      	Color(0xBF000000),
		  			]
		  		),
    		),
    	),
    );
  }
}

class MenuButton extends StatefulWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
    	width: 300,
    	margin: const EdgeInsets.only(left: 10, right: 10),
    	decoration: BoxDecoration(
    		boxShadow: [
    		 	BoxShadow(
            color: Colors.grey.withOpacity(0.2), //color of shadow
            spreadRadius: 2, //spread radius
            blurRadius: 3, // blur radius
            offset: const Offset(0, 2), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
    		],
    		color: Colors.grey,
    		borderRadius: const BorderRadius.all(Radius.circular(30)),
    	),
    	padding: const EdgeInsets.all(20),
    	child: Column(
    		crossAxisAlignment: CrossAxisAlignment.center,
    		children: [
	    		Row(
	    			mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	    			children: [
	    			IconTextButton(
	    				context: context,
	    				icon: Icons.home, 
	    				text: "ExnameCard",
	    				currentPages: 3,
	    				location: ExNameCard(),
	    				),
	    			IconTextButton(
	    				context: context,
	    				icon: Icons.calendar_view_month_rounded, 
	    				text: "Tempoh \nPengajian",
	    				currentPages: 3,
	    				location: NameCard(),
	    				),
	    			IconTextButton(
	    				context: context,
	    				icon: Icons.subject_rounded, 
	    				text: "Senarai Kursus \nDitawarkan",
	    				currentPages: 3,
	    				location: NameCard(),
	    				),
	    			IconTextButton(
	    				context: context,
	    				icon: Icons.collections_bookmark_rounded, 
	    				text: "Pengiktirafan",
	    				currentPages: 3,
	    				location: NameCard(),
	    				),
	    			],
	    		),
	    		Row(
	    			mainAxisAlignment: MainAxisAlignment.spaceEvenly,
	    			children: [
	    			IconTextButton(
	    				context: context,
	    				icon: Icons.home, 
	    				text: "Hgome",
	    				currentPages: 3,
	    				location: NameCard(),
	    				),
	    			IconTextButton(
	    				context: context,
	    				icon: Icons.home, 
	    				text: "Hgome",
	    				currentPages: 3,
	    				location: NameCard(),
	    				),
	    			IconTextButton(
	    				context: context,
	    				icon: Icons.home, 
	    				text: "Hgome",
	    				currentPages: 3,
	    				location: NameCard(),
	    				),
	    			IconTextButton(
	    				context: context,
	    				icon: Icons.home, 
	    				text: "Hgome",
	    				currentPages: 3,
	    				location: NameCard(),
	    				),
	    			],
	    		)
    		],
    	),
    );
  }
}

Widget IconTextButton({
	required BuildContext context,
	required IconData icon, 
	required String text,
	required int currentPages,
	required Widget location,
	}) {
	return InkWell(
		onTap: (){
			 Navigator.push(
		    context,
		    MaterialPageRoute(builder: (context) => location),
		  );
			print("Button Tapped $text");
		},
		child: Padding(
		  padding: const EdgeInsets.all(8.0),
		  child: Column(
		  	children: [
		  		Icon(icon, size: 20),
		  		Text(text),
		  	],
		  ),
		),
	);
}

class customShape extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}