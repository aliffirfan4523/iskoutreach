import 'package:flutter/material.dart';
import 'package:iskoutreach/src/controller/theme_mode_controller.dart';

final _isLightTheme = themeModeController.isLightTheme;

class ColorController{
  static getColor(){
    getIconColor();
  }

  static Color getIconColor(){
    if(_isLightTheme.value){
      return Colors.grey;
      }else{
        return Colors.orange;
      }
    }
}