import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iskoutreach/src/view/widget/Unordered_List.dart';

import '../model/text_model.dart';
import 'widget/custom_appbar.dart';

class Pengiktirafan extends StatefulWidget {
  const Pengiktirafan({super.key});

  @override
  State<Pengiktirafan> createState() => _PengiktirafanState();
}

class _PengiktirafanState extends State<Pengiktirafan> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
          context: context,
          title: "Pengiktirafan",
          icon: FontAwesomeIcons.award,
          heroTag: 'pengiktirafan'
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              UnorderedListItem(
                bottom: 15,
                left: 20,
                right: 20,
                text: pengiktirafan,
                top: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 120,
                    child: Image.asset(
                      "assets/images/MBOT.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              ExpansionTile(
                tilePadding: EdgeInsets.all(20),
                title: Text(
                  'Apa itu MBOT ?',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w200),
                ),
                children: [
                  UnorderedListItem(
                    bottom: 5,
                    left: 20,
                    right: 20,
                    text:'Lembaga Juruteknologi Malaysia (MBOT) ialah badan profesional yang memberi Pengiktirafan Profesional kepada Juruteknologi dan Juruteknik dalam bidang teknologi dan teknikal yang berkaitan.',
                    top: 5,
                  ),
                  UnorderedListItem(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    text: "Pengiktirafan MBOT diperlukan bagi membolehkan pelajar lepasan diploma menyambungkan pelajaran di peringkat lebih tinggi.",
                    top: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
