import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../main.dart';
import '../Homepage/home_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final dynamic icon;
  final String heroTag;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  CustomAppBar({
    Key? key,
    required this.title,
    required this.icon,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Colors.indigo.shade600,
              Colors.indigo.shade600,
            ],
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          ),
        ),
      ),
      title: Row(
        children: [
          Icon(icon, color: Colors.white,),
          SizedBox(width: 10,),
          Text(
            title,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          //Get.to(HomePage(), transition: Transition.cupertino, duration: const Duration(milliseconds: 100));
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        icon: const Icon(
          FontAwesomeIcons.caretLeft,
          color: Colors.white,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Material(
            color: Colors.transparent,
            child: IconButton(
              icon: Icon(Icons.list_rounded),
              color: Colors.white,
              onPressed: (){
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
