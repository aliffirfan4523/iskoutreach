import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'widget/custom_appbar.dart';

class TempohPengajian extends StatelessWidget {
  const TempohPengajian({super.key});

  @override
  Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: customAppBar(context: context,title: "Tempoh Pengajian", icon: Icons.menu),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(height:50),
            Text(
              "Tempoh Pengajian",
              textAlign: TextAlign.center,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Semua pelajar kolej vokasional akan menjalani tempoh pengajian selama 4 tahun 6 bulan. Tempoh pengajian ini terdiri daripada 2 tahun pengajian di peringkat Sijil Vokasional Malaysia(SVM), 2 tahun pengajian di peringkat Diploma Vokasional Malaysia(DVM), dan 5 bulan di peringkat On-Job-Training(OJT).",
                style: TextStyle(fontSize: 14),
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height:10),
            Text(
              "Tempoh pengajian Sijil Vokasional Malaysia (SVM)",
              textAlign: TextAlign.center,
            ),
            SizedBox(height:10),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: width * 0.6,
                child: Image.asset(
                  'images/tempoh_pengajian/SVM.jpg',
                  scale: 1.5,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(height:10),
            Text(
              "Tempoh pengajian Diploma vokasional Malaysia (DVM)",
              textAlign: TextAlign.center,
            ),
            SizedBox(height:10),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: width * 0.6,
                child: Image.asset(
                  'images/tempoh_pengajian/DVM.jpg',
                  scale: 1.5,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
