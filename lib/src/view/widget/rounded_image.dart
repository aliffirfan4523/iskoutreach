import 'package:flutter/material.dart';

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Center(
                        child: Container(
                            decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(item), fit: BoxFit.fitWidth),
                    ))),
                  ],
                )),
          ),
        ))
    .toList();

final List<Widget> homepageimageslider = homepageimglist
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Center(
                        child: Container(
                            decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(item), fit: BoxFit.fitWidth),
                    ))),
                  ],
                )),
          ),
        ))
    .toList();

final List<String> imgList = [
  'assets/images/amali/amali_1.jpg',
  'assets/images/amali/amali_2.jpg',
  'assets/images/amali/amali_3.jpg',
  'assets/images/amali/amali_4.jpg',
  'assets/images/amali/amali_5.jpg',
  'assets/images/amali/amali_6.jpg',
  'assets/images/amali/amali_7.jpg',
  'assets/images/amali/amali_8.jpg',
  'assets/images/amali/amali_9.jpg',
  'assets/images/amali/amali_10.jpg',
  'assets/images/amali/amali_11.jpg',
  'assets/images/amali/amali_12.jpg',
  'assets/images/amali/amali_13.jpg',
  'assets/images/amali/amali_14.jpg',
  'assets/images/amali/amali_15.jpg',
  'assets/images/amali/amali_16.jpg',
  'assets/images/amali/amali_17.jpg',
  'assets/images/amali/amali_18.jpg',
  'assets/images/amali/amali_19.jpg',
  'assets/images/amali/amali_20.jpg',
  'assets/images/amali/amali_21.jpg',
  'assets/images/amali/amali_22.jpg',
];

final List<String> homepageimglist = [
  'assets/images/homepage/1.jpg',
  'assets/images/homepage/2.jpg',
  'assets/images/homepage/3.jpg',
  'assets/images/homepage/4.jpeg',
  'assets/images/homepage/5.jpg',
  'assets/images/homepage/6.jpg',
  'assets/images/homepage/7.jpg',
  'assets/images/homepage/8.jpeg',
  'assets/images/homepage/9.jpeg',
  'assets/images/homepage/10.jpeg',
  'assets/images/homepage/11.jpeg',
  'assets/images/homepage/12.jpg',
];
