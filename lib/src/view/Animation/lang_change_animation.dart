import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LangChangeAnimation extends StatefulWidget {
  final Locale newLocale;

  const LangChangeAnimation({Key? key, required this.newLocale}) : super(key: key);

  @override
  State<LangChangeAnimation> createState() => _LangChangeAnimationState();
}

class _LangChangeAnimationState extends State<LangChangeAnimation> {

	@override
	void initState() {
	  super.initState();
	  Timer(Duration(seconds: 3), () async {
	    await context.setLocale(widget.newLocale); // change `easy_localization` locale
	    Get.updateLocale(widget.newLocale); // change `Get` locale direction
	  });
	}


  @override
  Widget build(BuildContext context) {
    return Container(
    	color: Colors.indigo.shade600,
      child: Center(
        child: Row(
        	children: [
        		Text("Debug Mode Is On", style: TextStyle(color: Colors.white, fontSize: 15),),
        		CircularProgressIndicator(),
        	],
        ),
      ),
    );
  }
}