import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../../controller/url_controller.dart';
import '../widget/custom_appbar.dart';
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
      		title: "Pertanyaan Lanjut",
          icon: FontAwesome5.phone,
      		heroTag: 'pertanyaan_lanjut',
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left:20.0,right:20.0, top: 40, bottom: 30),
                  child: Text(
                    "Sebarang pertanyaan lanjut boleh berhubung melalui nombor telefon atau emel di bawah",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("•  "),
                    Expanded(
                      child: Text(
                        "Jabatan Teknologi Maklumat",
                        style: TextStyle(fontSize: 14),
                        softWrap: true,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    IconButton(
                        icon: Icon(FontAwesome5.phone),
                        onPressed: () {
                          print('test');
                          makePhoneCall(60361565433);
                        },
                        iconSize: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left:30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("•  "),
                    Expanded(
                      child: Text(
                        "Pn. Rohani binti Karim \n(Ketua Jabatan)",
                        style: TextStyle(fontSize: 14),
                        softWrap: true,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.mail_rounded),
                        onPressed: () {
                          print('test');
                          makeEmail('rohanikarim@kvsbkpm.edu.my');
                        },
                        iconSize: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left:30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("•  "),
                    Expanded(
                      child: Text(
                        "Ts Norsidah binti Hashim \n(Ketua Program)",
                        style: TextStyle(fontSize: 14),
                        softWrap: true,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.mail_rounded),
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