import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:iskoutreach/src/view/widget/side_nav_bar.dart';

import 'widget/Unordered_List.dart';
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

class Pengenalan extends StatelessWidget {
  Pengenalan({super.key});



final List<Widget> imageSliders = imgList
.map((item) => Container(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          ' ',
                          style: const TextStyle(
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
            context: context,
            title: "Pengenalan",
            icon: FontAwesome5.desktop,
            heroTag: 'syarat_permohonan'),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            //penerangan program
            SizedBox(height: 30,),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left:20.0,right:20.0),
                child: Text(
                  "Pengenalan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            UnorderedListItem(
              bottom: 20,
              left: 20,
              right: 20,
              text:
                "Program Teknologi Sistem Komputer & Rangkaian menyediakan pelajar kepada asas perniagaan, penyelenggaraan, pengoperasian dan konfigurasi komputer serta rangkaian dan penyimpanan data disamping pengurusan pentadbiran dan integrasi maklumat.",
              top: 20,
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left:20.0,right:20.0),
                child: Text(
                  "Visi dan Misi",
                  style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 16),
                ),
              ),
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Visi – Peneraju pendidikan teknikal dan vokasional yang unggul.",
              top: 20,
            ),
            UnorderedListItem(
              bottom: 30,
              left: 20,
              right: 20,
              text:
                "Misi – Memperkasakan pendidikan teknikal dan vokasional melalui pelaksanaan program yang berkualiti.",
              top: 5,
            ),
            //penerangan bidang pengajian
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left:20.0,right:20.0),
                child: Text(
                  "Peringkat bidang pengajian",
                  style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 16),
                ),
              ),
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Program ini menawarkan 2 peringkat bidang pengajian iaitu:-",
              top: 30,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Sijil Vokasional Malaysia (SVM)",
              top: 5,
              number: 1,
            ),
            NumberedListItem(
              bottom: 30,
              left: 20,
              right: 20,
              text:
                "Diploma Vokasional Malaysia (DVM)",
              top: 5,
              number: 2,
            ),
            
            //Peluang kerjaya
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left:20.0,right:20.0),
                child: Text(
                  "Peluang Kerjaya",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Antara peluang kerjaya bagi pelajar program ini:",
              top: 20,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Penolong Jurutera Komputer",
              top: 5,
              number: 1,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Penolong Jurutera Rangkaian",
              top: 5,
              number: 2,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Pentadbir Sistem Rangkaian",
              top: 5,
              number: 3,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Penganalisis Sistem Rangkaian",
              top: 5,
              number: 4,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Juruteknik Rangkaian",
              top: 5,
              number: 5,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Juruteknik Komputer",
              top: 5,
              number: 6,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Perkhidmatan Sistem Rangkaian",
              top: 5,
              number: 7,
            ),
            NumberedListItem(
              bottom: 45,
              left: 20,
              right: 20,
              text:
                "Usahawan Kedai Komputer / Rangkaian",
              top: 5,
              number: 8,
            ),
            Column(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left:20.0,right:20.0, top: 10, bottom: 30),
                  child: Text(
                    "Aktiviti Pelajar",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              UnorderedListItem(
              bottom: 20,
              left: 20,
              right: 20,
              text:
                "Antara aktiviti pelajar seperti pemasangan kabel rangkaian, konfigurasi sistem pelayan, penyelenggaraan komputer dan lain-lain",
              top: 10,
            ),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                ),
                items: imageSliders,
              ),
              SizedBox(height: 30,)
            ],
          )
          ],

        )),
      ),
    );
  }
}
