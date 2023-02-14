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

List<CardList> cardlist = [
  CardList(
    imageLink: 'images/pn_rohani.jpeg',
    jawatan: 'Ketua Jabatan',
    nama: 'Pn Rohani Binti Karim',
    emel: '',
    jawatanLain: '',
  ),
  CardList(
    imageLink: 'images/pn_norshidah.jpeg',
    jawatan: 'Ketua Program',
    nama: 'Ts Norshidah Binti Hashim',
    emel: '',
    jawatanLain: '',
  ),
  CardList(
    imageLink: 'images/pn_rohaya.jpeg',
    jawatan: 'Penolong Ketua Program',
    nama: 'Pn Rohaya Binti Abu Samah',
    emel: '',
    jawatanLain: '',
  ),
  CardList(
    imageLink: 'images/pn_intan.jpeg',
    jawatan: 'Setiausaha Program',
    nama: 'Pn Intan Keristina Binti Mohd Yusop',
    emel: '',
    jawatanLain: 'Penyelaras PTA',
  ),
  CardList(
    imageLink: 'images/pn_azira.jpeg',
    jawatan: 'Pensyarah',
    nama: 'Pn Siti Azira Binti Mohd Zain',
    emel: '',
    jawatanLain: 'Penyelaras OJT',
  ),
  CardList(
    imageLink: 'images/pn_solehah.jpeg',
    jawatan: 'Pensyarah ',
    nama: 'Puan Siti Solehah Nurr Azmi Binti ',
    emel: '',
    jawatanLain: 'Penyelaras MBOT',
  ),
  CardList(
    imageLink: 'images/pn_elyani.jpeg',
    jawatan: 'Pensyarah',
    nama: 'Pn Nurelyani Binti Azmi',
    emel: '',
    jawatanLain: 'Penyelaras Svm/Jpk',
  ),
  CardList(
    imageLink: 'images/pn_ilham.jpeg',
    jawatan: 'Pensyarah',
    nama: 'Pn Ilham Karim Binti Mat Rof',
    emel: '',
    jawatanLain: 'Penyelaras Program IBM P-Tech',
  ),
  CardList(
    imageLink: 'images/pn_farah.jpeg',
    jawatan: 'Pensyarah',
    nama: 'Pn Farah Afiqah Binti Borhannudin',
    emel: '',
    jawatanLain: 'Penyelaras School Enterprise',
  ),
  CardList(
    imageLink: 'images/pn_diyana.jpeg',
    jawatan: 'Pensyarah',
    nama: 'Puan Nurdiyana Binti Mohammad Shukri',
    emel: '',
    jawatanLain: 'Jurulatih KV skills',
  ),
  CardList(
    imageLink: 'images/pn_masyi.jpeg',
    jawatan: 'Pensyarah',
    nama: 'Puan Masyiviranis Binti Mohd Zain',
    emel: '',
    jawatanLain: 'Penyelaras Program IBM P-Tech',
  ),
];

List<CardWidget> cardlistpng = [
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
    nama: 'Puan Siti Solehah Nurr Azmi Binti ',
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
    nama: 'Puan Nurdiyana Binti Mohammad Shukri',
    emel: '',
    jawatanLain: 'Jurulatih KV skills',
  ),
  CardWidget(
    imageLink: 'assets/images/png/pn_masyi.png',
    jawatan: 'Pensyarah',
    nama: 'Puan Masyiviranis Binti Mohd Zain',
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
    return Container(
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
        ]));
  }
}
