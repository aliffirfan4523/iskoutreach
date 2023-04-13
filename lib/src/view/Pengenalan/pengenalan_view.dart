import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:iskoutreach/src/view/widget/rounded_image.dart';
import 'package:iskoutreach/src/view/widget/side_nav_bar.dart';

import '../widget/Unordered_List.dart';
import '../widget/custom_appbar.dart';


final List<String> imgList = [
  "assets/images/amali/amali_1.jpg",
  "assets/images/amali/amali_2.jpg",
  "assets/images/amali/amali_3.jpg",
  "assets/images/amali/amali_4.jpg",
  "assets/images/amali/amali_5.jpg",
  'assets/images/amali/amali_6.jpg',
  'assets/images/amali/amali_7.jpg',
  'assets/images/amali/amali_8.jpg',
  'assets/images/amali/amali_9.jpg',
  'assets/images/amali/amali_10.jpg',
  'assets/images/amali/amali_11.jpg',
  'assets/images/amali/amali_12.jpg',
];

class Pengenalan extends StatelessWidget {
  Pengenalan({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
            context: context,
            title: "Pengenalan",
            icon: FontAwesome5.desktop,
            heroTag: 'pengenalan'),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            //penerangan program
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  tr("pengenalan.title"),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            UnorderedListItem(
              bottom: 20,
              left: 20,
              right: 20,
              text:
                tr("pengenalan.title_description"),
              top: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  tr("pengenalan.vision_mission"),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                tr("pengenalan.vision_mission_details.vision"),
              top: 20,
            ),
            UnorderedListItem(
              bottom: 30,
              left: 20,
              right: 20,
              text:
                tr("pengenalan.vision_mission_details.mission"),
              top: 5,
            ),
            //penerangan bidang pengajian
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  tr("pengenalan.level_of_study"),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                tr("pengenalan.level_of_study_details.description"),
              top: 30,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.level_of_study_details.svm"),
              top: 5,
              number: 1,
            ),
            NumberedListItem(
              bottom: 30,
              left: 20,
              right: 20,
              text: tr("pengenalan.level_of_study_details.dvm"),
              top: 5,
              number: 2,
            ),

            //Peluang kerjaya
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  tr("pengenalan.career_opportunities"),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.description"),
              top: 20,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.1"),
              top: 5,
              number: 1,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.2"),
              top: 5,
              number: 2,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.3"),
              top: 5,
              number: 3,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.4"),
              top: 5,
              number: 4,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.5"),
              top: 5,
              number: 5,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.6"),
              top: 5,
              number: 6,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.7"),
              top: 5,
              number: 7,
            ),
            NumberedListItem(
              bottom: 30,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.8"),
              top: 5,
              number: 8,
            ),
          ],
        )),
      ),
    );
  }
}
