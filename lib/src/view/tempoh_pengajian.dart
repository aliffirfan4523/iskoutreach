import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:iskoutreach/src/view/widget/Unordered_List.dart';

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
            const SizedBox(height: 40),
            const Text(
              "Tempoh pengajian Sijil Vokasional Malaysia (SVM)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: "Selama 4 semester iaitu 2 tahun.",
              top: 5,
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                  "Setiap kursus yang dilaksanakan dalam satu semester SVM mengambil masa selama 20 minggu.",
              top: 5,
            ),
            UnorderedListItem(
              bottom: 20,
              left: 20,
              right: 20,
              text:
                  "Terdiri daripada 17 minggu pengajaran dan pembelajaran diikuti dengan 3 minggu penilaian akhir.",
              top: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 180,
                  child: Image.asset(
                    'assets/images/tempoh_pengajian/SVM.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Tempoh pengajian Diploma vokasional Malaysia (DVM)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: "Selama 5 semester iaitu 2 tahun dan 6 bulan.",
              top: 5,
            ),
            UnorderedListItem(
              bottom: 20,
              left: 20,
              right: 20,
              text:
                  "Setiap pelajar yang melepasi syarat kemasukan ke Diploma Vokasional Malaysia akan menyambungkan pembelajaran selama 4 semester dan akan menjalani On-Job-Training (OJT) selama 6 bulan pada semester ke-5",
              top: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 180,
                  child: Image.asset(
                    'assets/images/tempoh_pengajian/DVM.jpg',
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
