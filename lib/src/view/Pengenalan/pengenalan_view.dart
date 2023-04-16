import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../Tempoh Pengajian/tempoh_pengajian.dart';
import '../widget/Unordered_List.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_bottom_bar.dart';
import '../widget/side_drawer.dart';


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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: sideDrawer(),
        appBar: CustomAppBar(
          title: "Pengenalan",
          icon: FontAwesome5.desktop,
          heroTag: 'pengenalan', 
        ),
        bottomNavigationBar: BottomBar(
          currentPage: 1, 
          nextPage: TempohPengajian(), 
          previousPage: Icon(Icons.directions), 
          totalPages: 9,
          isNextPageExist: true,
          isPrevPageExist: false,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            //penerangan program
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
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
              alignment: Alignment.centerLeft,
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
              alignment: Alignment.centerLeft,
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
                tr("pengenalan.level_of_study_details.level_of_study_description"),
              top: 20,
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
              alignment: Alignment.centerLeft,
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
              text: tr("pengenalan.career_opportunities_details.career_opportunities_description"),
              top: 20,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.details_1"),
              top: 5,
              number: 1,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.details_2"),
              top: 5,
              number: 2,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.details_3"),
              top: 5,
              number: 3,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.details_4"),
              top: 5,
              number: 4,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.details_5"),
              top: 5,
              number: 5,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.details_6"),
              top: 5,
              number: 6,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.details_7"),
              top: 5,
              number: 7,
            ),
            NumberedListItem(
              bottom: 30,
              left: 20,
              right: 20,
              text: tr("pengenalan.career_opportunities_details.details_8"),
              top: 5,
              number: 8,
            ),
          ],
        )),
      ),
    );
  }
}
