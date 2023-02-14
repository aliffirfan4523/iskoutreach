import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:iskoutreach/src/view/widget/custom_appbar.dart';

void showSecondPage({
	required BuildContext context,
	required String imageLink,
	required String heroTag,
	}){
	Navigator.of(context).push(MaterialPageRoute(
		builder: (context) => Scaffold(
			appBar: customAppBar(
				heroTag: heroTag,
				title: '', 
				context: context, 
				icon: FontAwesome5.certificate,
				isIconTrue: false
			),
			body: Center(
				child: Hero(
					tag: heroTag,
					child: Container(
						decoration: BoxDecoration(
							image: DecorationImage(
								image: AssetImage(imageLink),
								fit: BoxFit.fitWidth,
							),
						),
						width: MediaQuery.of(context).size.width-60,
					),
				),
			)
		),
	));
}