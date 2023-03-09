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
class GaleriGambar extends StatelessWidget {
  GaleriGambar({super.key});

final List<Widget> imageSliders = imgList
.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      child: Image.asset(item, fit: BoxFit.fill, width: 1000.0, height: 1000,)
      ),
    ),
  ))
.toList();

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
          child: Column(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left:20.0,right:20.0, top: 40, bottom: 30),
                  child: Text(
                    "Aktiviti Pelajar",
                  ),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.0,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                ),
                items: imageSliders,
              )
            ],
          ),
        ),
	  	),
    );
  }
}