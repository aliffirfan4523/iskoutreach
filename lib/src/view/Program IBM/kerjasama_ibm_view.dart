import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../model/text_model.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_bottom_bar.dart';
import '../widget/side_drawer.dart';


class KerjasamaIBM extends StatelessWidget {
  KerjasamaIBM({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScaffoldMessenger(
        child: Scaffold(
          key: _scaffoldKey,
          endDrawer: sideDrawer(),
          appBar: CustomAppBar(
              title: tr("program_ibm.program_ibm_title"),
              icon: FontAwesome5.handshake,
              heroTag: 'kerjasama_ibm',
          ),
          bottomNavigationBar: BottomBar(
            currentPage: 4, 
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
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                  child: Text(
                    tr("program_ibm.program_ibm_main_title"),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3 - 50,
                    child: Image.asset(
                      tr("program_ibm.ibm_logo"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3 - 90,
                    child: Image.asset(
                      tr("program_ibm.x_logo"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3 - 20,
                    child: Image.asset(
                      tr("program_ibm.kv_logo"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                tr("program_ibm.synopsis.synopsis_title"),
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  tr("program_ibm.synopsis.synopsis_description_1"),
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 13, height: 1.5),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 5.0, left: 20.0, right: 20.0, bottom: 5.0),
                child: Text(
                  tr("program_ibm.synopsis.synopsis_description_2"),
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 13, height: 1.5),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 5.0, left: 20.0, right: 20.0, bottom: 5.0),
                child: Text(
                  tr("program_ibm.synopsis.synopsis_description_3"),
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 13, height: 1.5),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 5.0, left: 20.0, right: 20.0, bottom: 5.0),
                child: Text(
                  tr("program_ibm.synopsis.synopsis_description_4"),
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 13, height: 1.5),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 5.0, left: 20.0, right: 20.0, bottom: 5.0),
                child: Text(
                  tr("program_ibm.synopsis.synopsis_description_5"),
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 13, height: 1.5),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                tr("program_ibm.organisation_chart.organisation_chart_title"),
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 30,
                    child: Image.asset(
                      tr("program_ibm.organisation_chart.organisation_chart_image_link"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          )),
        ),
      ),
    );
  }
}
