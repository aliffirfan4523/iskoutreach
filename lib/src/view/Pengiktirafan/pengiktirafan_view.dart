import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iskoutreach/src/view/widget/Unordered_List.dart';

import '../../model/text_model.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_bottom_bar.dart';
import '../widget/side_drawer.dart';

class Pengiktirafan extends StatefulWidget {
  const Pengiktirafan({super.key});

  @override
  State<Pengiktirafan> createState() => _PengiktirafanState();
}

class _PengiktirafanState extends State<Pengiktirafan> {
  
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: sideDrawer(isEndDrawer: true),
        appBar: CustomAppBar(
            title: tr("pengiktirafan.pengiktirafan_title"),
            icon: FontAwesomeIcons.award,
            heroTag: 'pengiktirafan',
            ),
        bottomNavigationBar: BottomBar(
          currentPage: 3, 
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              UnorderedListItem(
                bottom: 15,
                left: 20,
                right: 20,
                text: tr("pengiktirafan.pengiktirafan_description"),
                top: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 5.0,
                    ),
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 120,
                    child: Image.asset(
                      tr("pengiktirafan.pengiktirafan_image_link"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              ExpansionTile(
                tilePadding: EdgeInsets.all(20),
                title: Text(
                  tr("pengiktirafan.mbot.what_is_mbot"),
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w200),
                ),
                children: [
                  UnorderedListItem(
                    bottom: 5,
                    left: 20,
                    right: 20,
                    text:
                      tr("pengiktirafan.mbot.mbot_description_1"),
                    top: 5,
                  ),
                  UnorderedListItem(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    text:
                      tr("pengiktirafan.mbot.mbot_description_2"),
                    top: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
