import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../widget/Unordered_List.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_bottom_bar.dart';
import '../widget/side_drawer.dart';
import 'aktiviti_pelajar_image.dart';

class AktivitiPelajarView extends StatelessWidget {
  AktivitiPelajarView({super.key});

  int _current = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: sideDrawer(),
        appBar: CustomAppBar(
            title: tr("aktiviti_pelajar.aktiviti_pelajar_title"),
            icon: FontAwesome5.running,
            heroTag: 'aktiviti_pelajar', ),
        bottomNavigationBar: BottomBar(
          currentPage: 7, 
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10, bottom: 10),
                  child: Text(
                    tr("aktiviti_pelajar.aktiviti_pelajar_title"),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              UnorderedListItem(
                bottom: 0,
                left: 20,
                right: 20,
                text: tr("aktiviti_pelajar.aktiviti_pelajar_1"),
                top: 0,
              ),
              AktivitiPelajarImage()
            ],
          ),
        ),
      ),
    );
  }
}
