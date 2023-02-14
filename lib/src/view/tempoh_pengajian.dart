import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'image_hero_animation.dart';
import 'widget/custom_appbar.dart';
import 'widget/image_preview_widget.dart';

class TempohPengajian extends StatelessWidget {
  const TempohPengajian({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = ScrollController();
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
            context: context,
            title: "Tempoh Pengajian",
            icon: Icons.calendar_view_month_rounded,
            heroTag: 'tempoh_pengajian'),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Tempoh pengajian bagi Program Sijil Vokasional Malaysia adalah selama 4 semester iaitu 2 tahun. Setiap kursus yang dilaksanakan dalam satu semester SVM mengambil masa selama 20 minggu. Ia terdiri daripada 17 minggu pengajaran dan pembelajaran diikuti dengan 3 minggu penilaian akhir.",
                style: TextStyle(fontSize: 14),
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Tempoh pengajian Sijil Vokasional Malaysia (SVM)",
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width-120,
                  child: Image.asset(
                    'assets/images/tempoh_pengajian/SVM.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Tempoh pengajian bagi Program Diploma Vokasional Malaysia adalah selama 5 semester iaitu 2 tahun dan 6 bulan. Setiap pelajar yang melepasi syarat kemasukan ke Diploma Vokasional Malaysia akan menyambungkan pembelajaran selama 4 semester dan akan menjalani On-Job-Training (OJT) selama 6 bulan pada semester ke-5",
                style: TextStyle(fontSize: 14),
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Tempoh pengajian Diploma vokasional Malaysia (DVM)",
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width-120,
                  child: Image.asset(
                    'assets/images/tempoh_pengajian/DVM.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
