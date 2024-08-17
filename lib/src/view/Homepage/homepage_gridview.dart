import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:get/get.dart';

import '../Aktiviti Pelajar/aktiviti_pelajar_view.dart';
import '../Pengenalan/pengenalan_view.dart';
import '../Pengiktirafan/pengiktirafan_view.dart';
import '../Program IBM/kerjasama_ibm_view.dart';
import '../Senarai Kursus Ditawarkan/senarai_kursus_view.dart';
import '../Senarai Pensyarah/senarai_pensyarah.dart';
import '../Syarat Permohonan/syarat_permohonan_view.dart';
import '../Tempoh Pengajian/tempoh_pengajian.dart';

class HomepageGridview extends StatelessWidget {
  const HomepageGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // Number of columns (4 for 2x4 grid)
      padding: EdgeInsets.only(left: 5, right: 5),
      children: buttonList.map((MenuButton) => MenuButton).toList(),
      physics: const NeverScrollableScrollPhysics(), // Disable scrolling
    );
  }
}

List<MenuButton> buttonList = [
  MenuButton(
      images: "assets/images/Icon/ideabulb.png",
      text: tr("pengenalan.title"),
      location: Pengenalan(),
      heroTag: 'pengenalan'),
  //tempoh pengajian
  MenuButton(
      images: "assets/images/Icon/schedule.png",
      text: tr("tempoh_pengajian.tempoh_pengajian_mb_title"),
      location: TempohPengajian(),
      heroTag: 'tempoh_pengajian'),
  //senarai kursus yang ditawarkan
  MenuButton(
      images: "assets/images/Icon/list.png",
      text: tr("senarai_kursus.senarai_kursus_mb_title"),
      location: const SenaraiKursus(),
      heroTag: 'senarai_kursus_ditawarkan'),
  //pengiktirafan
  MenuButton(
      images: "assets/images/Icon/reward.png",
      text: tr("pengiktirafan.pengiktirafan_mb_title"),
      location: const Pengiktirafan(),
      heroTag: 'pengiktirafan'),
  MenuButton(
      images: "assets/images/Icon/handshake.png",
      text: tr("program_ibm.program_ibm_mb_title"),
      location: KerjasamaIBM(),
      heroTag: 'kerjasama_ibm'),
  //senarai pensyarah
  MenuButton(
      images: "assets/images/Icon/teacher.png",
      text: tr("senarai_pensyarah.senarai_pensyarah_mb_title"),
      location: SenaraiPensyarah(),
      heroTag: 'senarai_pensyarah'),
  MenuButton(
      images: "assets/images/Icon/questionmark.png",
      text: tr("syarat_permohonan.syarat_permohonan_mb_title"),
      location: SyaratPermohonan(),
      heroTag: 'syarat_permohonan'),
  MenuButton(
      images: "assets/images/Icon/administrator.png",
      text: tr("aktiviti_pelajar.aktiviti_pelajar_mb_title"),
      location: AktivitiPelajarView(),
      heroTag: 'Aktiviti_Pelajar'),
];

class MenuButton extends StatelessWidget {
  MenuButton(
      {required this.images,
      required this.text,
      required this.location,
      required this.heroTag,
      super.key});

  String images;
  String text;
  Widget location;
  String heroTag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            Get.to(location,
                transition: Transition.fadeIn,
                duration: const Duration(milliseconds: 500));
          },
          child: Container(
            color: const Color(0xFFFB5509),
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                children: [
                  Hero(
                    tag: heroTag,
                    child: Image.asset(
                      images,
                      fit: BoxFit.fill,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  AutoSizeText(
                    text,
                    maxFontSize: 20,
                    minFontSize: 14,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
