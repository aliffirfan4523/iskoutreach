

import 'package:flutter/material.dart';

import '../view/home_page.dart';
import '../view/name_card/name_card.dart';
import '../view/setting_page.dart';


final List<Widget> current_pages = <Widget>[
    const HomePage(isOpened: false),
    Container(
    	color: Colors.white,
    	child: const Icon(Icons.favorite_rounded)
    ),
    NameCard(),
    NameCard(),
    const SettingPage(),  
];



