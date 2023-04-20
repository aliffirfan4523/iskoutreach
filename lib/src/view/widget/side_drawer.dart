import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iskoutreach/src/view/Settings/setting_view.dart';

import '../Aktiviti Pelajar/aktiviti_pelajar_view.dart';
import '../Pengenalan/pengenalan_view.dart';
import '../Pengiktirafan/pengiktirafan_view.dart';
import '../Pertanyaan Lanjut/pertanyaan_lanjut_view.dart';
import '../Program IBM/kerjasama_ibm_view.dart';
import '../Senarai Kursus Ditawarkan/senarai_kursus_view.dart';
import '../Senarai Pensyarah/senarai_pensyarah.dart';
import '../Syarat Permohonan/syarat_permohonan_view.dart';
import '../Tempoh Pengajian/tempoh_pengajian.dart';
import 'menu_button.dart';

Drawer sideDrawer(){
  List<IconTextButton> buttonList = [
      IconTextButton(
          icon: FontAwesome5.desktop,
          text: tr("pengenalan.title"),
          location: Pengenalan(),
          heroTag: 'pengenalan'),
      //tempoh pengajian
      IconTextButton(
          icon: Icons.calendar_view_month_rounded,
          text: tr("tempoh_pengajian.tempoh_pengajian_mb_title"),
          location: TempohPengajian(),
          heroTag: 'tempoh_pengajian'),
      //senarai kursus yang ditawarkan
      IconTextButton(
          icon: Icons.subject_rounded,
          text: tr("senarai_kursus.senarai_kursus_mb_title"),
          location: const SenaraiKursus(),
          heroTag: 'senarai_kursus_ditawarkan'),
      //pengiktirafan
      IconTextButton(
          icon: FontAwesomeIcons.award,
          text: tr("pengiktirafan.pengiktirafan_mb_title"),
          location: const Pengiktirafan(),
          heroTag: 'pengiktirafan'),
      IconTextButton(
          icon: FontAwesomeIcons.handshake,
          text: tr("program_ibm.program_ibm_mb_title"),
          location: KerjasamaIBM(),
          heroTag: 'kerjasama_ibm'),
      //senarai pensyarah
      IconTextButton(
          icon: Icons.person_rounded,
          text: tr("senarai_pensyarah.senarai_pensyarah_mb_title"),
          location: SenaraiPensyarah(),
          heroTag: 'senarai_pensyarah'),
      IconTextButton(
          icon: FontAwesome5.question_circle,
          text: tr("syarat_permohonan.syarat_permohonan_mb_title"),
          location: SyaratPermohonan(),
          heroTag: 'syarat_permohonan'),
      IconTextButton(
          icon: FontAwesome5.running,
          text: tr("aktiviti_pelajar.aktiviti_pelajar_mb_title"),
          location: AktivitiPelajarView(),
          heroTag: 'Aktiviti_Pelajar'),
      IconTextButton(
          icon: FontAwesome5.phone,
          text: tr("pertanyaan_lanjut.pertanyaan_lanjut_mb_title"),
          location: PertanyaanLanjut(),
          heroTag: 'pertanyaan_lanjut'),
      IconTextButton(
          icon: Icons.settings_rounded,
          text: tr("tetapan.tetapan_mb_title"),
          location: Setting(),
          heroTag: 'tetapan'),
    ];
  
  return Drawer(
    child: ListView.builder(
      itemCount: buttonList.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          // Drawer header
          return SizedBox(
            height: MediaQuery.of(context).size.height/10,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo.shade600,
                ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 60,
                    height: 40,
                    ),
                  Image.asset(
                    "assets/images/sec_logo.png",
                    width: 70,
                    height: 60,
                    ),
                  ],
                  ),
                ),
              ),
            );
          } else {
            // Drawer button
            final button = buttonList[index - 1];
            return Column(
              children: [
              ListTile(
                leading: Icon(button.icon),
                title: Text(button.text),
                onTap: () {
                  // Navigate to the corresponding screen when button is tapped
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => button.location));
                  },
                  ),
              Divider()
              ],
              );
          }
          },
          ),
    );
}