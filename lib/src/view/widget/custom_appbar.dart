import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

AppBar customAppBar({
	required BuildContext context,
	required String title, 
	dynamic icon, 
	required String heroTag,
	bool isIconTrue = true,
	}) {
	return AppBar(
		shape: ShapeBorder.lerp(
			const RoundedRectangleBorder(
				borderRadius: BorderRadius.only(
					bottomLeft: Radius.circular(60),
					bottomRight: Radius.circular(60),
				),
			),
			const RoundedRectangleBorder(
				borderRadius: BorderRadius.only(
					bottomLeft: Radius.circular(60),
					bottomRight: Radius.circular(60),
				),
			),
		0.5
		),
		flexibleSpace: Container(
			decoration: BoxDecoration(
				gradient: LinearGradient(
					begin: Alignment.topCenter,
					end: Alignment.bottomRight,
					colors: <Color>[
						Colors.indigo.shade600,
						Colors.indigo.shade800,
					]
				),
				borderRadius: const BorderRadius.only(
					bottomLeft: Radius.circular(60),
					bottomRight: Radius.circular(60),
				),
			),
		),
		title: Text(title, style: TextStyle(fontSize: 15),),
		backgroundColor: Colors.transparent,
		elevation: 0,
		leading: IconButton(
			onPressed: () {
				Navigator.pop(context);
			},
			icon: const Icon(FontAwesomeIcons.caretLeft, color: Colors.white),
		),
		actions: [
		Hero(
			tag: heroTag,
			child: Padding(
				padding: const EdgeInsets.only(right:50.0),
				child: isIconTrue ? Icon(icon, color: Colors.white,) : Container(),
				)
			),
		],
	);
}

_openDrawer(BuildContext context){
	Scaffold.of(context).openEndDrawer();
}