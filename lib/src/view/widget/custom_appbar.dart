import 'package:flutter/material.dart';

AppBar customAppBar({required BuildContext context,required String title, required IconData icon}) {
	return AppBar(
		leading: IconButton(
			onPressed: () {
				Navigator.pop(context);
			},
			icon: Icon(Icons.arrow_left_rounded),
		),
		title: Row(
			children: [
				Icon(icon),
				SizedBox(width: 10,),
				Text(title),
			],
		),
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
			decoration: const BoxDecoration(
				gradient: LinearGradient(
					begin: Alignment.topCenter,
					end: Alignment.bottomRight,
					colors: <Color>[
					Color(0xFF0075FF),
					Color(0xFF035671),
					]
					),
				borderRadius: const BorderRadius.only(
					bottomLeft: Radius.circular(60),
					bottomRight: Radius.circular(60),
					),
				),
			),
		);
}