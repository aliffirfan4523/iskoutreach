import 'package:flutter/material.dart';

AppBar customAppBar({required BuildContext context,required String title, required IconData icon}) {
	return AppBar(
		backgroundColor: Colors.transparent,
		elevation: 0,
		leading: IconButton(
			onPressed: () {
				Navigator.pop(context);
			},
			icon: Icon(Icons.arrow_left_rounded),
		),
	);
}