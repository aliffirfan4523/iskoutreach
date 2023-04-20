import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:iskoutreach/src/view/widget/Unordered_List.dart';

import '../widget/custom_appbar.dart';
import '../widget/custom_bottom_bar.dart';
import '../widget/side_drawer.dart';


class SyaratPermohonan extends StatelessWidget {
  SyaratPermohonan({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: sideDrawer(),
        appBar: CustomAppBar(
          title: tr("syarat_permohonan.syarat_permohonan_title"),
          icon: FontAwesome5.question_circle,
          heroTag: 'syarat_permohonan',
        ),
        bottomNavigationBar: BottomBar(
          currentPage: 6, 
        ),
        body: SingleChildScrollView(
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                tr("syarat_permohonan.syaratSvm.syaratSvm_title_1"),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                tr("syarat_permohonan.syaratSvm.syaratSvm_title_2"),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemCount: 7,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return UnorderedListItem(
                  bottom: 5,
                  left: 20,
                  right: 20,
                  text: tr('syarat_permohonan.syaratSvm.syaratSvm_$index'),
                  top: 5,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                tr("syarat_permohonan.syaratDvm.syaratDvm_title_1"),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                tr("syarat_permohonan.syaratDvm.syaratDvm_title_2"),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return UnorderedListItem(
                  bottom: 5,
                  left: 20,
                  right: 20,
                  text: tr('syarat_permohonan.syaratDvm.syaratDvm_$index'),
                  top: 5,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                tr("syarat_permohonan.syaratTambahan.syaratTambahan_title"),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("syarat_permohonan.syaratTambahan.syaratTambahan_1"),
              top: 20,
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("syarat_permohonan.syaratTambahan.syaratTambahan_2"),
              top: 10,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("syarat_permohonan.syaratTambahan.syaratTambahan_3"),
              top: 5,
              number: 1,
            ),
            NumberedListItem(
              bottom: 10,
              left: 20,
              right: 20,
              text: tr("syarat_permohonan.syaratTambahan.syaratTambahan_4"),
              top: 5,
              number: 2,
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("syarat_permohonan.syaratTambahan.syaratTambahan_5"),
              top: 10,
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("syarat_permohonan.syaratTambahan.syaratTambahan_6"),
              top: 10,
            ),
            const SizedBox(height: 30)
          ],
        )),
      ),
    );
  }
}
