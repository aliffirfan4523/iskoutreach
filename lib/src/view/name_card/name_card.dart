import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:provider/provider.dart';

import '../../model/card_model.dart';
import '../../model/text_model.dart';
import '../../provider/homepage_provider.dart';
import '../widget/custom_appbar.dart';

class NameCard extends StatefulWidget {
  @override
  State<NameCard> createState() => _NameCardState();
}

class _NameCardState extends State<NameCard> {
  final List<Map> myProducts =
      List.generate(100, (index) => {"id": index, "name": "Product $index"})
          .toList();
  int currentImage = 0;
  int maxNumber = items.length;

  void nextNumber() {
    setState(() {
      currentImage++;
      if (currentImage == maxNumber) {
        currentImage = 0;
      }
    });
  }

  void previousNumber() {
    setState(() {
      currentImage--;
      if (currentImage < 0) {
        currentImage = maxNumber - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: customAppBar(
          context: context, title: "Nama Pensyarah", icon: Icons.menu),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 300,
            child: Swiper(
              itemBuilder: (context, index) {
                return cardlistpng[index];
              },
              itemWidth: 500,
              itemHeight: 600.0,
              viewportFraction: 0.8,
              scale: 0.5,
              autoplay: true,
              itemCount: cardlistpng.length,
              control: const SwiperControl(),
              pagination: SwiperPagination(),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCardList extends StatefulWidget {
  @override
  State<MyCardList> createState() => _MyCardListState();
}

class _MyCardListState extends State<MyCardList> {
  final List<String> _imageUrls = [
    'https://picsum.photos/300/200',
    'https://picsum.photos/300/200',
    'https://picsum.photos/300/200',
    'https://picsum.photos/300/200',
    'https://picsum.photos/300/200',
  ];
  double currentSkinOpacity = 1.0;
  double nextSkinOpacity = 0.0;
  int currentImageIndex = 0;
  int nextImageIndex = 1;

  void nextNumber() {
    setState(() {
      currentImageIndex++;
      if (currentImageIndex == cardlistpng.length) {
        currentImageIndex = 0;
      }
    });
  }

  void previousNumber() {
    setState(() {
      currentImageIndex--;
      if (currentImageIndex < 0) {
        currentImageIndex = cardlistpng.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBar(
          context: context, title: "Nama Pensyarah", icon: Icons.menu),
      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity == 0) {
            return;
          }
          if (details.primaryVelocity!.compareTo(0) == -1) {
            setState(() {
              currentImageIndex = nextImageIndex;
              nextImageIndex = nextImageIndex + 1;
              if (nextImageIndex == cardlistpng.length) {
                nextImageIndex = 0;
              }
              currentSkinOpacity = 1.0;
              nextSkinOpacity = 0.0;
            });
          } else {
            setState(() {
              nextImageIndex = currentImageIndex;
              currentImageIndex = currentImageIndex - 1;
              if (currentImageIndex == -1) {
                currentImageIndex = cardlistpng.length - 1;
              }
              currentSkinOpacity = 1.0;
              nextSkinOpacity = 0.0;
            });
          }
        },
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(70, 99, 204, 1),
                              Color.fromRGBO(3, 23, 96, 1)
                            ]),
                      )),
                  Positioned(
                      bottom: 160,
                      left: 20,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              cardlistpng[currentImageIndex].nama,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                            Text(
                              cardlistpng[currentImageIndex].jawatan,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                            Text(
                              cardlistpng[currentImageIndex].jawatanLain,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      top: 100,
                      left: 60,
                      child: Text(
                        'TENAGA PENSYARAH',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 120,
                      left: 30,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 60,
                        child: Text(
                          pensyarah,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                          softWrap: true,
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      right: 20,
                      child: Container(
                          width: 230,
                          height: 310,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    cardlistpng[currentImageIndex].imageLink),
                                fit: BoxFit.fitWidth),
                          ))),
                  Positioned(
                    left: 20,
                    top: MediaQuery.of(context).size.height * 0.5,
                    child: IconButton(
                      splashColor: Colors.grey,
                      hoverColor: Colors.grey,
                      icon: Icon(FontAwesome5.arrow_circle_left),
                      onPressed: () {
                        previousNumber();
                      },
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: MediaQuery.of(context).size.height * 0.5,
                    child: IconButton(
                      splashColor: Colors.grey,
                      hoverColor: Colors.grey,
                      icon: Icon(FontAwesome5.arrow_circle_right),
                      onPressed: () {
                        nextNumber();
                      },
                    ),
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}

class IconTile extends StatelessWidget {
  final IconData? icon;
  final Color? backColor;

  IconTile({this.icon, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: backColor, borderRadius: BorderRadius.circular(15)),
        child: Icon(icon),
      ),
    );
  }
}
