import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../../main.dart';


final ToggleMenu toggleMenu = ToggleMenu();


class ToggleMenu {
  ToggleMenu() {
    final _state = sideMenuKey.currentState!;
    if (_state.isOpened) {
      _state.closeSideMenu();
    } else {
      _state.openSideMenu();
    }// open side menu
  }
}