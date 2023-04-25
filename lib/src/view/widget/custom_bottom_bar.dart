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
import 'menu_button.dart';

class BottomBar extends StatelessWidget {
  final int currentPage;
  //final bool isNextPageExist;
  //final bool isPrevPageExist;

  BottomBar({super.key, 
    required this.currentPage,
    //required this.isNextPageExist, 
    //required this.isPrevPageExist,
  });

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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

    return BottomAppBar(
      height: 65,
      color: Colors.indigo.shade600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10,),
          currentPage > 0 ? 
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: (){
                //Get.to(buttonList[currentPage-1].location, transition: Transition.leftToRightWithFade, duration: const Duration(milliseconds: 500));
               },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo.shade800, 
                  borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(60),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(60),
                ),
                ),
                //The reason i do this is because i dont want to put another code just to make a fuckin button so imma use same icontextbutton and put ignorepointer to disable the ontap function the i use the inkwell from my bottombar one
                child: IgnorePointer(ignoring: false,child: buttonList[currentPage-1]) 
              ),
            )
          ) 
          : Expanded(flex: 1,child: Container()),
          Expanded(
            flex: 1,
            child: Material(
                color: Colors.indigo.shade600,
                child: IconButton(
                  icon: Icon(Icons.list_rounded),
                  color: Colors.white,
                  onPressed: (){
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ),
          ),
          currentPage < 8 ? 
          Expanded(
            flex: 1,
            child: InkWell(
            onTap: (){
              //Get.to(buttonList[currentPage+1].location, transition: Transition.rightToLeftWithFade, duration: const Duration(milliseconds: 500));
             },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(20),
                ),
                color: Colors.indigo.shade800, 
              ),
              //The reason i do this is because i dont want to put another code just to make a fuckin button so imma use same icontextbutton and put ignorepointer to disable the ontap function the i use the inkwell from my bottombar one
              child: IgnorePointer(ignoring: false,child: buttonList[currentPage+1])
              ),
            )
          )
          : Expanded(flex: 1,child: Container()),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
}

