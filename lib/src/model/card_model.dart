import 'package:flutter/material.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';

List<CardItem> items = [
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'images/pn_rohani.jpeg',
            fit: BoxFit.fill,
          ))),
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'images/pn_norshidah.jpeg',
            fit: BoxFit.fill,
          ))),
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'images/pn_rohaya.jpeg',
            fit: BoxFit.fill,
          ))),
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'images/pn_intan.jpeg',
            fit: BoxFit.fill,
          ))),
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('images/pn_azira.jpeg', fit: BoxFit.fill))),
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('images/pn_solehah.jpeg', fit: BoxFit.fill))),
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('images/pn_elyani.jpeg', fit: BoxFit.fill))),
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('images/pn_ilham.jpeg', fit: BoxFit.fill))),
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('images/pn_farah.jpeg', fit: BoxFit.fill))),
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('images/pn_diyana.jpeg', fit: BoxFit.fill))),
  ImageCarditem(
      image: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('images/pn_masyi.jpeg', fit: BoxFit.fill))),
];

List<CardWidget> cardlisten = [
  CardWidget(
    imageLink: 'assets/images/png/pn_rohani.png',
    jawatan: 'Department Head',
    nama: 'Ms Rohani Binti Karim',
    emel: '',
    jawatanLain: '',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_norshidah.png',
    jawatan: 'Programme Head',
    nama: 'Ms Norshidah Binti Hashim',
    emel: '',
    jawatanLain: '',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_rohaya.png',
    jawatan: 'Assistant Programme Head',
    nama: 'Ms Rohaya Binti Abu Samah',
    emel: '',
    jawatanLain: '',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_intan.png',
    jawatan: 'Program Secretary',
    nama: 'Ms Intan Keristina Binti Mohd Yusop',
    emel: '',
    jawatanLain: 'PTA Coordinator',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_azira.png',
    jawatan: 'Lecturer',
    nama: 'Ms Siti Azira Binti Mohd Zain',
    emel: '',
    jawatanLain: 'OJT Coordinator',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_solehah.png',
    jawatan: 'Lecturer',
    nama: 'Ms Siti Solehah Binti Nurr Azmi',
    emel: '',
    jawatanLain: 'MBOT Coordinator',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_elyani.png',
    jawatan: 'Lecturer',
    nama: 'Ms Nurelyani Binti Azmi',
    emel: '',
    jawatanLain: 'SVM/JPK Coordinator',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_ilham.png',
    jawatan: 'Lecturer',
    nama: 'Ms Ilham Karim Binti Mat Rof',
    emel: '',
    jawatanLain: 'IBM P-Tech Program Coordinator',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_farah.png',
    jawatan: 'Lecturer',
    nama: 'Ms Farah Afiqah Binti Borhannudin',
    emel: '',
    jawatanLain: 'School Enterprise Coordinator',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_diyana.png',
    jawatan: 'Lecturer',
    nama: 'Ms Nurdiyana Binti Mohammad Shukri',
    emel: '',
    jawatanLain: 'KV Skills Trainer',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_masyi.png',
    jawatan: 'Lecturer',
    nama: 'Ms Masyiviranis Binti Mohd Zain',
    emel: '',
    jawatanLain: 'IBM P-Tech Program Coordinator',
  ),
];

List<CardWidget> cardlistms = [
  CardWidget(
    imageLink: 'assets/images/png/pn_rohani.png',
    jawatan: 'Ketua Jabatan',
    nama: 'Pn Rohani Binti Karim',
    emel: '',
    jawatanLain: '',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_norshidah.png',
    jawatan: 'Ketua Program',
    nama: 'Ts Norshidah Binti Hashim',
    emel: '',
    jawatanLain: '',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_rohaya.png',
    jawatan: 'Penolong Ketua Program',
    nama: 'Pn Rohaya Binti Abu Samah',
    emel: '',
    jawatanLain: '',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_intan.png',
    jawatan: 'Setiausaha Program',
    nama: 'Pn Intan Keristina Binti Mohd Yusop',
    emel: '',
    jawatanLain: 'Penyelaras PTA',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_azira.png',
    jawatan: 'Pensyarah',
    nama: 'Pn Siti Azira Binti Mohd Zain',
    emel: '',
    jawatanLain: 'Penyelaras OJT',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_solehah.png',
    jawatan: 'Pensyarah ',
    nama: 'Pn Siti Solehah Binti Nurr Azmi',
    emel: '',
    jawatanLain: 'Penyelaras MBOT',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_elyani.png',
    jawatan: 'Pensyarah',
    nama: 'Pn Nurelyani Binti Azmi',
    emel: '',
    jawatanLain: 'Penyelaras Svm/Jpk',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_ilham.png',
    jawatan: 'Pensyarah',
    nama: 'Pn Ilham Karim Binti Mat Rof',
    emel: '',
    jawatanLain: 'Penyelaras Program IBM P-Tech',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_farah.png',
    jawatan: 'Pensyarah',
    nama: 'Pn Farah Afiqah Binti Borhannudin',
    emel: '',
    jawatanLain: 'Penyelaras School Enterprise',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_diyana.png',
    jawatan: 'Pensyarah',
    nama: 'Pn Nurdiyana Binti Mohammad Shukri',
    emel: '',
    jawatanLain: 'Jurulatih KV skills',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_masyi.png',
    jawatan: 'Pensyarah',
    nama: 'Pn Masyiviranis Binti Mohd Zain',
    emel: '',
    jawatanLain: 'Penyelaras Program IBM P-Tech',
  ),
];

class CardList {
  String imageLink;
  String jawatan;
  String nama;
  String emel;
  String jawatanLain;
  CardList(
      {required this.imageLink,
      required this.jawatan,
      required this.nama,
      required this.emel,
      required this.jawatanLain});
}

class CardWidget extends StatelessWidget {
  CardWidget(
      {required this.imageLink,
      required this.jawatan,
      required this.nama,
      required this.emel,
      required this.jawatanLain});

  String imageLink;
  String jawatan;
  String nama;
  String emel;
  String jawatanLain;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(90.0),
        bottomLeft: Radius.circular(90.0),
        bottomRight: Radius.circular(90.0),
      ),
      child: Container(
          width: MediaQuery.of(context).size.width - 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(70, 99, 204, 1),
                  Color.fromRGBO(3, 23, 96, 1)
                ]),
          ),
          child: Stack(children: <Widget>[
            Positioned(
                bottom: 0,
                right: 10,
                child: Container(
                    width: 160,
                    height: 227,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageLink), fit: BoxFit.fitWidth),
                    ))),
            Positioned(
                top: 30,
                left: 28,
                child: Text(
                  nama,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Inter',
                      fontSize: 14,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 60,
                left: 28,
                child: Text(
                  jawatan,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Inter',
                      fontSize: 12,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 90,
                left: 28,
                child: Text(
                  jawatanLain,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Inter',
                      fontSize: 12,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
          ])),
    );
  }
}
