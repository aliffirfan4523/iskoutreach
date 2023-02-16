import 'package:flutter/material.dart';
import 'package:iskoutreach/src/view/widget/menu_button.dart';

Drawer sideDrawer(){
	return Drawer(
		child: ListView.builder(
      itemBuilder: (
        BuildContext context,int index){
        return GestureDetector(
        	onTap: ()=>Navigator.push(
		        context,
		        MaterialPageRoute(builder: (context) => buttonList[index].location),
		      ),
          child: ListTile(
            leading:Icon(buttonList[index].icon),
            title: Text(buttonList[index].text),
          ),
        );
      }
    )
	);
}