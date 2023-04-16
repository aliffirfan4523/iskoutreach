	import 'dart:ui';
	import 'dart:math' as math;

	import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
	import 'package:animated_text_kit/animated_text_kit.dart';
	import 'package:carousel_slider/carousel_slider.dart';
	import 'package:easy_localization/easy_localization.dart';
	import 'package:flutter/material.dart';
	import 'package:flutter/src/widgets/framework.dart';
	import 'package:flutter/src/widgets/placeholder.dart';
	import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
	import 'package:get/get.dart';
	import 'package:google_fonts/google_fonts.dart';

	import '../../controller/theme_controller.dart';
	import '../../controller/theme_mode_controller.dart';
	import '../Animation/lang_change_animation.dart';
	import 'menu_button.dart';
	import 'rounded_image.dart';

	class CustomSliverBar extends StatefulWidget {
		const CustomSliverBar({super.key});

		@override
		State<CustomSliverBar> createState() => _CustomSliverBarState();
	}

	class _CustomSliverBarState extends State<CustomSliverBar> {
		final _isLightTheme = themeModeController.isLightTheme;
		
		@override
		Widget build(BuildContext context) {
			IconData thememodeIcon = _isLightTheme.value
			? Icons.dark_mode_rounded
			: Icons.light_mode_rounded;
			double height = MediaQuery.of(context).size.height;

			return Scaffold(
				body: CustomScrollView(
					slivers: <Widget>[
					SliverAppBar(
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
                	width: 70,
                	height: 60,
                ),
              ],
            ),
						actions: [
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
								PopupMenuItem(
									value: 3,
									// row with two children
									child: Row(  
										children: [
										Icon(thememodeIcon, color: Colors.white),
										SizedBox(
											width: 10,
											),
										Text("Debug Mode", style: TextStyle(color: Colors.white))
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
											BottomSheetAction(title: Text("Bahasa Melayu", style: TextStyle(color: Colors.white)), onPressed: (context) async{
												final _newLocale = Locale('ms', 'MY');
												Navigator.pop(context);
												Get.to(() => LangChangeAnimation(newLocale: _newLocale,),transition: Transition.fadeIn);
												}),
											BottomSheetAction(title: Text("English", style: TextStyle(color: Colors.white)), onPressed: (context) async {
												final _newLocale = Locale('en', 'US');
												Navigator.pop(context);
												Get.to(() => LangChangeAnimation(newLocale: _newLocale,),transition: Transition.fadeIn);
												}),
											],
											cancelAction: CancelAction(title: Text("Cancel", style: TextStyle(color: Colors.red.shade400))),// onPressed parameter is optional by default will dismiss the ActionSheet
											);
										// if value 2 show dialog
										} else if (value == 2) {
											toggleTheme();
											} else if (value == 3) {
												final _newLocale = Locale('ms', 'MY');
												Get.to(() => CustomSliverBar(),transition: Transition.fadeIn);
											}
										},
									),
								],
							),
						],
					),
					SliverToBoxAdapter(
			      child: SizedBox(height: MediaQuery.of(context).size.height/20), // Add desired height here
			    ),
					SliverAppBar(
						automaticallyImplyLeading: false,
						backgroundColor: Colors.indigo.shade600,
						expandedHeight: 250.0,
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
							  			color: Colors.indigo.shade600.withOpacity(0.3),
							  		  child: Text(
							  		  	"Welcome To \nI S K  O U T R E A C H",
							  		  	textAlign: TextAlign.center,
							  		  	style: TextStyle(
							  		  		fontSize: 16,
							  		  		color: Colors.white,
							  		  		),
							  		  	),
							  		),
							  		),
							  	),
							),
							background: Swiper(
								loop: true,
								itemCount: homepageimglist.length,
								itemBuilder: (BuildContext context, int index) => Image.asset(
									homepageimglist[index],
									fit: BoxFit.cover,
									),
								autoplay: true,
								)
							),
					),
					SliverToBoxAdapter(
			      child: SizedBox(height: MediaQuery.of(context).size.height/16), // Add desired height here
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
			      child: SizedBox(height: MediaQuery.of(context).size.height/16), // Add desired height here
			    ),
			    //Menu button section
			    SliverToBoxAdapter(
      			child: Padding(
      			  padding: const EdgeInsets.all(20.0),
      			  child: MenuButton(),
      			), // Add desired height here
    			),
			],
		)
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
