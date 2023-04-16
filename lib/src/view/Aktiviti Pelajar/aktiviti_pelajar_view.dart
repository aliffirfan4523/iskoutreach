import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../widget/Unordered_List.dart';
import '../widget/custom_appbar.dart';
import '../widget/rounded_image.dart';
import '../widget/side_drawer.dart';

class AktivitiPelajarView extends StatelessWidget {
  AktivitiPelajarView({super.key});

  int _current = 0;
  final CarouselController _controller = CarouselController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: sideDrawer(),
        appBar: CustomAppBar(
            title: "Aktiviti Pelajar",
            icon: Icons.browse_gallery_rounded,
            heroTag: 'pertanyaan_lanjut', ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10, bottom: 10),
                  child: Text(
                    "Aktiviti Pelajar",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              UnorderedListItem(
                bottom: 0,
                left: 20,
                right: 20,
                text:
                    "Antara aktiviti pelajar seperti pemasangan kabel rangkaian, konfigurasi sistem pelayan, penyelenggaraan komputer dan lain-lain",
                top: 0,
              ),
              CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlayInterval: Duration(milliseconds: 1000),
                  aspectRatio: 0.8,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                ),
                items: imageSliders,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
