import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';

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
        appBar: customAppBar(context: context,title: "Pengiktirafan", icon: Icons.menu),
        body: Column(
          children: [
          Spacer(flex: 1,),
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
            Expanded(
              child: PhotoView(
                onTapUp: (context, details, controllerValue) {
                },
                customSize: Size(300,200),
                backgroundDecoration: BoxDecoration(
                  color: Colors.grey[900]?.withOpacity(0.5),
                  ),
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 1.8,
                imageProvider: AssetImage("images/MBOT.jpg"),
                heroAttributes: PhotoViewHeroAttributes(tag: "images/MBOT.jpg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
