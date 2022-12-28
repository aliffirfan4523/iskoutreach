

import 'package:flutter/material.dart';

import '../view/home_page.dart';
import '../view/setting_page.dart';


final List<Widget> current_pages = <Widget>[
    const HomePage(isOpened: false),
    Container(
    	color: Colors.white,
    	child: const Icon(Icons.favorite_rounded)
    ),
    const SettingPage(),  
  ];

  
class CurrentShowPages extends StatelessWidget {

  int currentPages = 0;

  @override
  Widget build(BuildContext context) {
    return current_pages[currentPages];
  }
}