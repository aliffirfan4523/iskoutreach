import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/text_model.dart';
import 'widget/Unordered_List.dart';
import 'widget/custom_appbar.dart';

class KerjasamaIBM extends StatelessWidget {
  KerjasamaIBM({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
            context: context,
            title: "Program IBM-PTech",
            icon: FontAwesome5.handshake,
            heroTag: 'kerjasama_ibm'),
        body: SingleChildScrollView(
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: Text(
                  "Program kerjasama IBM-PTech antara IBM dan Kolej Vokasional Sungai Buloh",
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
                    'assets/images/logo_IBM.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3 - 90,
                  child: Image.asset(
                    'assets/images/logo_x.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3 - 20,
                  child: Image.asset(
                    'assets/images/logo_kv.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Sinopsis',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                ibm1,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 5.0, left: 20.0, right: 20.0, bottom: 5.0),
              child: Text(
                ibm2,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 5.0, left: 20.0, right: 20.0, bottom: 5.0),
              child: Text(
                ibm3,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 5.0, left: 20.0, right: 20.0, bottom: 5.0),
              child: Text(
                ibm4,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 5.0, left: 20.0, right: 20.0, bottom: 5.0),
              child: Text(
                ibm5,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13, height: 1.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Carta Organisasi',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 30,
                  child: Image.asset(
                    'assets/images/jpeg/carta.jpeg',
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
    );
  }
}
