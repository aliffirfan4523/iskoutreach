import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../Aktiviti Pelajar/aktiviti_pelajar_view.dart';
import '../Pengenalan/pengenalan_view.dart';
import '../Pengiktirafan/pengiktirafan_view.dart';
import '../Pertanyaan Lanjut/pertanyaan_lanjut_view.dart';
import '../Program IBM/kerjasama_ibm_view.dart';
import '../Senarai Kursus Ditawarkan/senarai_kursus_view.dart';
import '../Senarai Pensyarah/senarai_pensyarah.dart';
import '../Syarat Permohonan/syarat_permohonan_view.dart';
import '../Tempoh Pengajian/tempoh_pengajian.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
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
    ];

    return Container(
      constraints: BoxConstraints(
        //maxWidth: 500,
        minWidth: 300,
      ),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), //color of shadow
            spreadRadius: 1, //spread radius
            blurRadius: 5, // blur radius
            offset: const Offset(0, 5), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), //color of shadow
            spreadRadius: 1, //spread radius
            blurRadius: 5, // blur radius
            offset: const Offset(0, -5), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
        ],
        color: Colors.indigo.shade600,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonList[0],
              buttonList[1],
              buttonList[2],
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonList[3],
              buttonList[4],
              buttonList[5],
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonList[6],
              buttonList[7],
              buttonList[8],
            ],
          )
        ],
      ),
    );
  }
}

class IconTextButton extends StatelessWidget {
  IconTextButton(
      {required this.icon,
      required this.text,
      required this.location,
      required this.heroTag,
      super.key});

  IconData icon;
  String text;
  Widget location;
  String heroTag;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(location,
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 500));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            children: [
              Hero(
                  tag: heroTag,
                  child: Icon(
                    icon,
                    size: 15,
                    color: Colors.white,
                  )),
              AutoSizeText(
                text,
                maxFontSize: 14,
                minFontSize: 10,
                style: const TextStyle(color: Colors.white),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
