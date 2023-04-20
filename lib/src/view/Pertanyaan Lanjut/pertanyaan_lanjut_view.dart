import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../../controller/url_controller.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_bottom_bar.dart';
import '../widget/side_drawer.dart';


class PertanyaanLanjut extends StatelessWidget {
  PertanyaanLanjut({super.key});

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
			child: Scaffold(
        key: _scaffoldKey,
        endDrawer: sideDrawer(),
      	appBar: CustomAppBar(
          title: tr("pertanyaan_lanjut.pertanyaan_lanjut_title"),
          icon: FontAwesome5.phone,
      		heroTag: 'pertanyaan_lanjut',
        ),
        bottomNavigationBar: BottomBar(
          currentPage: 8, 
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0,right:20.0, top: 40, bottom: 30),
                  child: Text(
                    tr("pertanyaan_lanjut.pertanyaan_lanjut_1"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("•  "),
                    Expanded(
                      child: Text(
                        tr("pertanyaan_lanjut.pertanyaan_lanjut_2"),
                        style: const TextStyle(fontSize: 14),
                        softWrap: true,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    IconButton(
                        icon: const Icon(FontAwesome5.phone),
                        onPressed: () {
                          if (kDebugMode) {
                            print('test');
                          }
                          makePhoneCall(60361565433);
                        },
                        iconSize: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left:30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("•  "),
                    Expanded(
                      child: Text(
                        tr("pertanyaan_lanjut.pertanyaan_lanjut_3"),
                        style: const TextStyle(fontSize: 14),
                        softWrap: true,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    IconButton(
                        icon: const Icon(Icons.mail_rounded),
                        onPressed: () {
                          if (kDebugMode) {
                            print('test');
                          }
                          makeEmail('rohanikarim@kvsbkpm.edu.my');
                        },
                        iconSize: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left:30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("•  "),
                    Expanded(
                      child: Text(
                        tr("pertanyaan_lanjut.pertanyaan_lanjut_4"),
                        style: const TextStyle(fontSize: 14),
                        softWrap: true,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    IconButton(
                        icon: const Icon(Icons.mail_rounded),
                        onPressed: () {
                          makeEmail('norsidah@kvsbkpm.edu.my');
                        },
                        iconSize: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
	  	),
    );
  }
}