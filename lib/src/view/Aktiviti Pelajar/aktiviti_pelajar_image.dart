import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AktivitiPelajarImage extends StatelessWidget {
  AktivitiPelajarImage({super.key});

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> imgList = [
      {'link': 'assets/images/amali/amali_1.jpg', 'desc': tr("aktiviti_pelajar.amali_1")},
      {'link': 'assets/images/amali/amali_2.jpg', 'desc': tr("aktiviti_pelajar.amali_2")},
      {'link': 'assets/images/amali/amali_3.jpg', 'desc': tr("aktiviti_pelajar.amali_3")},
      {'link': 'assets/images/amali/amali_4.jpg', 'desc': tr("aktiviti_pelajar.amali_4")},
      {'link': 'assets/images/amali/amali_5.jpg', 'desc': tr("aktiviti_pelajar.amali_5")},
      {'link': 'assets/images/amali/amali_6.jpg', 'desc': tr("aktiviti_pelajar.amali_6")},
      {'link': 'assets/images/amali/amali_7.jpg', 'desc': tr("aktiviti_pelajar.amali_7")},
      {'link': 'assets/images/amali/amali_8.jpg', 'desc': tr("aktiviti_pelajar.amali_8")},
      {'link': 'assets/images/amali/amali_9.jpg', 'desc': tr("aktiviti_pelajar.amali_9")},
      {'link': 'assets/images/amali/amali_10.jpg', 'desc': tr("aktiviti_pelajar.amali_10")},
      {'link': 'assets/images/amali/amali_11.jpg', 'desc': tr("aktiviti_pelajar.amali_11")},
      {'link': 'assets/images/amali/amali_12.jpg', 'desc': tr("aktiviti_pelajar.amali_12")},
      {'link': 'assets/images/amali/amali_13.jpg', 'desc': tr("aktiviti_pelajar.amali_13")},
      {'link': 'assets/images/amali/amali_15.jpg', 'desc': tr("aktiviti_pelajar.amali_15")},
      {'link': 'assets/images/amali/amali_16.jpg', 'desc': tr("aktiviti_pelajar.amali_16")},
      {'link': 'assets/images/amali/amali_17.jpg', 'desc': tr("aktiviti_pelajar.amali_17")},
      {'link': 'assets/images/amali/amali_18.jpg', 'desc': tr("aktiviti_pelajar.amali_18")},
      {'link': 'assets/images/amali/amali_19.jpg', 'desc': tr("aktiviti_pelajar.amali_19")},
      {'link': 'assets/images/amali/amali_20.jpg', 'desc': tr("aktiviti_pelajar.amali_20")},
      {'link': 'assets/images/amali/amali_21.jpg', 'desc': tr("aktiviti_pelajar.amali_21")},
      {'link': 'assets/images/amali/amali_22.jpg', 'desc': tr("aktiviti_pelajar.amali_22")},
    ];

    final List<Widget> imageSliders = imgList.map(
      (item) => Container(
        constraints: BoxConstraints(
          maxWidth: 400,
          minWidth: 300,
        ),
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          child: Stack(
            children: <Widget>[
              Center(
                child: Container(                
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: DecorationImage(
                      image: AssetImage(item['link']!), fit: BoxFit.fitWidth
                    ),
                  )
                )
              ),
              // Image.network(item['link']!, fit: BoxFit.fitWidth, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0
                  ),
                  child: Text(
                    item['desc']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      )
    ).toList();
    
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
        autoPlayInterval: Duration(milliseconds: 2500),
        aspectRatio: 0.8,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
      ),
      items: imageSliders,
    );
  }
}