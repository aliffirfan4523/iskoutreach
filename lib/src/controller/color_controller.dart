import 'package:flutter/material.dart';
import 'package:iskoutreach/src/controller/theme_mode_controller.dart';

final _isLightTheme = themeModeController.isLightTheme;

class ColorController{
  static getColor(){
    getContainerColor();
    getIconColor();
  }
  static Color getContainerColor(){
  _isLightTheme.value? Color(0xFFE5E1E1) :  Color(0xFF13131A);
  }
  static Color getIconColor(){
    if(_isLightTheme.value){
      return Colors.orange;
      }else{
        return Colors.white;
      }
    }
}