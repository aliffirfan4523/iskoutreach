import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
    ScrollController _controller = ScrollController();
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
            context: context,
            title: "Pengiktirafan",
            icon: FontAwesomeIcons.award,
            heroTag: 'pengiktirafan'),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5, bottom: 50),
              child: Text(
                pengiktirafan,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  "assets/images/MBOT.jpg",
                  width: MediaQuery.of(context).size.width - 60,
                )),
          ],
        ),
      ),
    );
  }
}
