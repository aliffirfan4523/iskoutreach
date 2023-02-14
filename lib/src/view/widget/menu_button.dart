import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../etika_pemakaian_view.dart';
import '../home_page.dart';
import '../name_card/name_card.dart';
import '../pengiktirafan_view.dart';
import '../senarai_kursus_view.dart';
import '../syarat_permohonan_view.dart';
import '../tempoh_pengajian.dart';

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
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
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
             
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             ,
            ],
          )
        ],
      ),
    );
  }
}

List<IconTextButton> buttonList = [
   //tempoh pengajian
              IconTextButton(
                  context: context,
                  icon: Icons.calendar_view_month_rounded,
                  text: "Tempoh \nPengajian",
                  location: const TempohPengajian(),
                  heroTag: 'tempoh_pengajian'),
              //senarai kursus yang ditawarkan
              IconTextButton(
                  context: context,
                  icon: Icons.subject_rounded,
                  text: "Senarai Kursus \nDitawarkan",
                  location: const SenaraiKursus(),
                  heroTag: 'senarai_kursus_ditawarkan'),
              //pengiktirafan
              IconTextButton(
                  context: context,
                  icon: FontAwesomeIcons.award,
                  text: "Pengiktirafan",
                  location: const Pengiktirafan(),
                  heroTag: 'pengiktirafan'),
   //senarai pensyarah
              IconTextButton(
                  context: context,
                  icon: Icons.person_rounded,
                  text: "Senarai Pensyarah",
                  location: NameCard(),
                  heroTag: 'senarai_pensyarah'),
              //kod pemakaian
              IconTextButton(
                  context: context,
                  icon: FontAwesome5.tshirt,
                  text: "Etika Pemakaian",
                  location: EtikaPemakaian(),
                  heroTag: 'etika_pemakaian'),

              IconTextButton(
                  context: context,
                  icon: FontAwesome5.question_circle,
                  text: "Syarat Permohonan",
                  location: SyaratPermohonan(),
                  heroTag: 'syarat_permohonan')
];

class IconTextButton extends StatelessWidget {
  IconTextButton({  
    required BuildContext context,
  required IconData icon,
  required String text,
  required Widget location,
  required String heroTag,super.key});

  @override
  Widget build(BuildContext context) {
      return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => location),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Hero(
              tag: heroTag,
              child: Icon(
                icon,
                size: 20,
                color: Colors.white,
              )),
          Text(
            text,
            style: const TextStyle(fontSize: 11, color: Colors.white),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
  }
}