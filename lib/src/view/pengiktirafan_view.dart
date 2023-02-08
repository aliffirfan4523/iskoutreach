import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';

import '../model/text_model.dart';
import 'widget/custom_appbar.dart';
import 'widget/image_preview_widget.dart';

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
          icon: Icons.menu, 
          controller: _controller,
          heroTag: 'pengiktirafan'
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5, bottom: 30),
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
              child: ImagePreview(
                width: double.infinity, 
                imageLink: "images/MBOT.jpg",
                heroTag: 'pengiktirafan_mbot',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
