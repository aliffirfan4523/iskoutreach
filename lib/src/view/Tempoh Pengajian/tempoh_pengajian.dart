import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:iskoutreach/src/model/senarai_subjek_model.dart';
import 'package:iskoutreach/src/view/Senarai%20Kursus%20Ditawarkan/senarai_kursus_view.dart';
import 'package:iskoutreach/src/view/widget/Unordered_List.dart';

import '../Pengenalan/pengenalan_view.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_bottom_bar.dart';
import '../widget/side_drawer.dart';

class TempohPengajian extends StatelessWidget {
  TempohPengajian({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final _controller = ScrollController();
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: sideDrawer(isEndDrawer: true),
        appBar: CustomAppBar(
          title: tr("tempoh_pengajian.tempoh_pengajian_title"),
          icon: Icons.calendar_view_month_rounded,
          heroTag: 'tempoh_pengajian',
        ),
        bottomNavigationBar: BottomBar(
          currentPage: 1, 
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left:20.0, right: 20.0),
              child: Text(
                tr("tempoh_pengajian.svm.svm_period"),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 10),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("tempoh_pengajian.svm.svm_1"),
              top: 5,
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("tempoh_pengajian.svm.svm_2"),
              top: 5,
            ),
            UnorderedListItem(
              bottom: 20,
              left: 20,
              right: 20,
              text: tr("tempoh_pengajian.svm.svm_3"),
              top: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 300
                  ),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    tr("tempoh_pengajian.svm.svm_image_link"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left:20.0, right: 20.0),
              child: Text(
                tr("tempoh_pengajian.dvm.dvm_period"),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 10),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: tr("tempoh_pengajian.dvm.dvm_1"),
              top: 5,
            ),
            UnorderedListItem(
              bottom: 20,
              left: 20,
              right: 20,
              text: tr("tempoh_pengajian.dvm.dvm_2"),
              top: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 300
                  ),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset(
                    tr("tempoh_pengajian.dvm.dvm_image_link"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        )),
      ),
    );
  }
}
