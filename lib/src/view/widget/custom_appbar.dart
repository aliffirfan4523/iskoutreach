import 'package:flutter/material.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

ScrollAppBar customAppBar({
	required BuildContext context,
	required String title, 
	dynamic icon, 
	required controller,
	required String heroTag,
	}) {
	final controller = ScrollController();
	return ScrollAppBar(
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
		title: Text(title),
		backgroundColor: Colors.transparent,
		controller: controller,
		elevation: 0,
		leading: IconButton(
			onPressed: () {
				Navigator.pop(context);
			},
			icon: const Icon(Icons.arrow_left_rounded),
		),
		actions: [
			Hero(
				tag: heroTag,
				child: Padding(
				  padding: const EdgeInsets.only(right:50.0),
				  child: Icon(icon),
				)
			),
		],
	);
}