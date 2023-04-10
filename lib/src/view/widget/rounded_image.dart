import 'package:flutter/material.dart';

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                child: Stack(
                  children: <Widget>[
                  Center(
                        child: Container(
                            decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(item['link']!), fit: BoxFit.fitWidth),
                    ))),
                    // Image.network(item['link']!, fit: BoxFit.fitWidth, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          item['desc']!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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

final List<Map<String, String>> imgList = [
  {'link': 'assets/images/amali/amali_1.jpg', 'desc': 'Pelajar membuat amali pemasangan konduit di dinding'},
  {'link': 'assets/images/amali/amali_2.jpg', 'desc': 'Pelajar membuat amali pemasangan konduit di dinding'},
  {'link': 'assets/images/amali/amali_3.jpg', 'desc': 'Pelajar membuat amali pemasangan kabel rangkaian ke patch cord'},
  {'link': 'assets/images/amali/amali_4.jpg', 'desc': 'Pelajar membuat amali pemasangan kabel rangkaian ke patch cord'},
  {'link': 'assets/images/amali/amali_5.jpg', 'desc': 'Pelajar membuat amali pemasangan kabel rangkaian ke patch cord'},
  {'link': 'assets/images/amali/amali_6.jpg', 'desc': 'Pelajar membuat amali pemasangan kabel rangkaian ke patch cord'},
  {'link': 'assets/images/amali/amali_7.jpg', 'desc': 'Pelajar membuat amali pemasangan kabel rangkaian ke paip konduit'},
  {'link': 'assets/images/amali/amali_8.jpg', 'desc': 'Hasil pemasangan kabel rangkaian oleh pelajar'},
  {'link': 'assets/images/amali/amali_9.jpg', 'desc': 'Hasil pemasangan kabel rangkaian oleh pelajar'},
  {'link': 'assets/images/amali/amali_10.jpg', 'desc': 'Pelajar membuat simulasi rangkaian menggunakan Cisco Packet Tracer'},
  {'link': 'assets/images/amali/amali_11.jpg', 'desc': 'Pelajar melakukan konfigurasi pelayan'},
  {'link': 'assets/images/amali/amali_12.jpg', 'desc': 'Pelajar membuat konfigurasi rangkaian'},
  {'link': 'assets/images/amali/amali_13.jpg', 'desc': 'Pelajar membuat konfigurasi rangkaian'},
  {'link': 'assets/images/amali/amali_15.jpg', 'desc': 'Hasil pemasangan komputer oleh pelajar'},
  {'link': 'assets/images/amali/amali_16.jpg', 'desc': 'Hasil pemasangan komputer oleh pelajar'},
  {'link': 'assets/images/amali/amali_17.jpg', 'desc': 'Pelajar membuat pembersihan peralatan komputer'},
  {'link': 'assets/images/amali/amali_18.jpg', 'desc': 'Pelajar membuat pembersihan peralatan komputer'},
  {'link': 'assets/images/amali/amali_19.jpg', 'desc': 'Pelajar membuat pembersihan peralatan komputer'},
  {'link': 'assets/images/amali/amali_20.jpg', 'desc': 'Simulasi pengujian keselamatan sistem komputer oleh pelajar'},
  {'link': 'assets/images/amali/amali_21.jpg', 'desc': 'Simulasi pengujian keselamatan sistem komputer oleh pelajar'},
  {'link': 'assets/images/amali/amali_22.jpg', 'desc': 'Hasil ciptaan replika Smart Home oleh pelajar dan guru'},
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
  //'assets/images/homepage/12.jpg',
];
