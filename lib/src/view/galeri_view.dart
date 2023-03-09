import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'widget/custom_appbar.dart';
final List<String> imgList = [
  "assets/images/amali/amali_1.jpg",
  "assets/images/amali/amali_2.jpg",
  "assets/images/amali/amali_3.jpg",
  "assets/images/amali/amali_4.jpg",
  "assets/images/amali/amali_5.jpg",
  'assets/images/amali/amali_6.jpg',
  'assets/images/amali/amali_7.jpg',
  'assets/images/amali/amali_8.jpg',
  'assets/images/amali/amali_9.jpg',
];
class DaftarSekarang extends StatelessWidget {
  DaftarSekarang({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
			child: Scaffold(
      	appBar: customAppBar(
      		context: context,
      		title: "Galeri",
      		icon: Icons.browse_gallery_rounded,
      		heroTag: 'galeri'
        ),
        body: SingleChildScrollView(
          ),
        ),
    );
  }
}