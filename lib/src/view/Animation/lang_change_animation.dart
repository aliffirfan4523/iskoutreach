import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';

class LangChangeAnimation extends StatefulWidget {
  final Locale newLocale;

  final String firstlang;
  final String seclang;
  LangChangeAnimation({Key? key, required this.newLocale, required this.firstlang, required this.seclang}) : super(key: key);

  @override
  State<LangChangeAnimation> createState() => _LangChangeAnimationState();
}

class _LangChangeAnimationState extends State<LangChangeAnimation> {

	@override
	void initState() {
	  super.initState();
	  Timer(Duration(milliseconds: 3), () async {
	    await context.setLocale(widget.newLocale); // change `easy_localization` locale
	    Get.updateLocale(widget.newLocale); // change `Get` locale direction
	  });
	}


  @override
  Widget build(BuildContext context) {
    return Container(
    	color: Colors.indigo.shade600,
      child: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          	children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.firstlang, style: TextStyle(color: Colors.white, fontSize: 18),),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_right, color:Colors.white),
                  SizedBox(width: 10,),
                  Text(widget.seclang, style: TextStyle(color: Colors.white, fontSize: 18),),
                ],
              ),
          		SizedBox(height: 40,),
          		CircularProgressIndicator(color: Colors.white,),
          	],
          ),
        ),
      ),
    );
  }
}