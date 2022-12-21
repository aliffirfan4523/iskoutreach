import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();
GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();
bool isOpened = false;


class ToggleMenu {
  ToggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }
}