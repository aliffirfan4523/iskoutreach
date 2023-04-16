import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../controller/theme_controller.dart';
import '../../controller/theme_mode_controller.dart';
import '../Animation/lang_change_animation.dart';
import '../widget/custom_appbar.dart';
import '../widget/side_drawer.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final _isLightTheme = themeModeController.isLightTheme;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  

  @override
  Widget build(BuildContext context) {
  	var languageList = [    
	    'English',
	    'Malay',
	  ];

    return SafeArea(
			child: Scaffold(
        key: _scaffoldKey,
        endDrawer: sideDrawer(),
      	appBar: CustomAppBar(
      		title: "Setting",
          icon: Icons.settings_rounded,
      		heroTag: 'Setting',
        ),
        body: Column(
        	children: [
        		Spacer(flex: 1,),
        		SizedBox(
        			height: 60,
        		  child: ListTile(
        		  	title:  Text("Change Language"),
        		  	trailing: DropdownButton(
              
		              // Initial Value
		              value: context.locale.languageCode == 'en' ? "English" : "Malay",
		                
		              // Down Arrow Icon
		              icon: const Icon(Icons.keyboard_arrow_down),    
		                
		              // Array list of items
		              items: languageList.map((String items) {
		                return DropdownMenuItem(
		                  value: items,
		                  child: Text(items),
		                );
		              }).toList(),
		              // After selecting the desired option,it will
		              // change button value to selected value
		              onChanged: (String? newValue) { 
		                if(newValue=="Malay"){
								    	final newLocale = Locale('ms', 'MY');
                    Navigator.pop(context);
                    Get.to(() => LangChangeAnimation(newLocale: newLocale,),transition: Transition.fadeIn);
								    } else if(newValue=="English"){
								    	final _newLocale = Locale('en', 'US');
                    Navigator.pop(context);
                    Get.to(() => LangChangeAnimation(newLocale: _newLocale,),transition: Transition.fadeIn);
								    }
		              },
		            ),
        		  ),
        		),
        		ListTile(
        			title:  Text("Change Theme"),
        			trailing: ToggleSwitch(
								  initialLabelIndex: _isLightTheme.value ? 1 : 0,
								  totalSwitches: 2,
								  minWidth: 90.0,
								  cornerRadius: 20.0,
								  activeFgColor: Colors.white,
								  inactiveBgColor: Colors.grey,
								  inactiveFgColor: Colors.white,
								  icons: [
								    Icons.dark_mode_rounded,
								    Icons.light_mode_rounded
								  ],	
								  activeBgColors: [[Colors.black], [Colors.orange],],
								  onToggle: (index) {
								    toggleTheme(index);
								  },
								),
        		),
        		Spacer(flex: 7,),
        	],
        ),
	  	),
    );
  }

  int getCurrentLang(){
  	int currentIndex = 0;
  	if(context.locale.languageCode == 'en'){
  		currentIndex = 1;
  		return currentIndex;
  	}else{
  		currentIndex = 2;
  		return currentIndex;
  	}
  }

  int getCurrentTheme(){
  	int currentIndex = 0;
  	if(_isLightTheme.value == true){
  		currentIndex = 1;
  		return currentIndex;
  	}else{
  		currentIndex = 2;
  		return currentIndex;
  	}
  }

  void toggleTheme(int? currentIndex) {
	  if (currentIndex == 1) {
	    _isLightTheme.value = true;
	    } else {
	      _isLightTheme.value = false;
	    }
	    setState(() {
	      ThemeController.changeThemeMode = _isLightTheme.value;
	    });
	    Get.changeThemeMode(
	      _isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
	    );
    themeModeController.saveThemeStatus();
  }
}