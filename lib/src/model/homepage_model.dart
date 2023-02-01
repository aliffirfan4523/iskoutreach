

import 'package:flutter/material.dart';

import '../view/home_page.dart';
import '../view/name_card/name_card.dart';


final List<Widget> current_pages = <Widget>[
    HomePage(),
    Container(
    	color: Colors.white,
    	child: const Icon(Icons.favorite_rounded)
    ),
    NameCard(),
    NameCard(),
];



