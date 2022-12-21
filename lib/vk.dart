import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

void main() async {
  runApp(
  	MaterialApp(
  		home: MainPage(),
  		theme:ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
  	)
  );
}

class MainPage extends StatefulWidget {
	@override
	_MainPageState createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
	final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
	Color mainColor = Color.fromARGB(255, 123, 0, 245);
	bool isOpened = false;

	final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }
  
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			key: _scaffoldKey,
		  body: 
		);
	}
}


