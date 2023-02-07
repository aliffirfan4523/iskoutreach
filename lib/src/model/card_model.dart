import 'package:flutter/material.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
List<CardItem> items = [
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_rohani.jpeg', fit: BoxFit.fill,))),
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_norshidah.jpeg',fit: BoxFit.fill,))),
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_rohaya.jpeg',fit: BoxFit.fill,))),
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_intan.jpeg',fit: BoxFit.fill,))),
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_azira.jpeg',fit: BoxFit.fill))),
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_solehah.jpeg',fit: BoxFit.fill))),
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_elyani.jpeg',fit: BoxFit.fill))),
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_ilham.jpeg',fit: BoxFit.fill))),
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_farah.jpeg',fit: BoxFit.fill))),
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_diyana.jpeg',fit: BoxFit.fill))),
  ImageCarditem(
    image:ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset('images/pn_masyi.jpeg',fit: BoxFit.fill))),
];

List<CardList> cardlist = [
	CardList(
		imageLink: 'images/pn_rohani.jpeg',
		jawatan: 'Ketua Jabatan',
		nama: 'Pn Rohani Binti Karim',
		emel: '', jawatanLain: '',
	),
	CardList(
		imageLink: 'images/pn_norshidah.jpeg',
		jawatan: 'Ketua Program',
		nama: 'Ts Norshidah Binti Hashim',
		emel: '', jawatanLain: '',
	),
	CardList(
		imageLink: 'images/pn_rohaya.jpeg',
		jawatan: 'Penolong Ketua Program',
		nama: 'Pn Rohaya Binti Abu Samah',
		emel: '', jawatanLain: '',
	),
	CardList(
		imageLink: 'images/pn_intan.jpeg',
		jawatan: 'Setiausaha Program',
		nama: 'Pn Intan Keristina Binti Mohd Yusop',
		emel: '', jawatanLain: 'Penyelaras PTA',
	),
	CardList(
		imageLink: 'images/pn_azira.jpeg',
		jawatan: 'Pensyarah',
		nama: 'Pn Siti Azira Binti Mohd Zain',
		emel: '', jawatanLain: 'Penyelaras OJT',
	),
	CardList(
		imageLink: 'images/pn_solehah.jpeg',
		jawatan: 'Pensyarah ',
		nama: 'Puan Siti Solehah Nurr Azmi Binti ',
		emel: '', jawatanLain: 'Penyelaras MBOT',
	),
	CardList(
		imageLink: 'images/pn_elyani.jpeg',
		jawatan: 'Pensyarah',
		nama: 'Pn Nurelyani Binti Azmi',
		emel: '', jawatanLain: 'Penyelaras Svm/Jpk',
	),
	CardList(
		imageLink: 'images/pn_ilham.jpeg',
		jawatan: 'Pensyarah',
		nama: 'Pn Ilham Karim Binti Mat Rof',
		emel: '', jawatanLain: 'Penyelaras Program IBM P-Tech',
	),
	CardList(
		imageLink: 'images/pn_farah.jpeg',
		jawatan: 'Pensyarah',
		nama: 'Pn Farah Afiqah Binti Borhannudin',
		emel: '', jawatanLain: 'Penyelaras School Enterprise',
	),
	CardList(
		imageLink: 'images/pn_diyana.jpeg',
		jawatan: 'Pensyarah',
		nama: 'Puan Nurdiyana Binti Mohammad Shukri',
		emel: '', jawatanLain: 'Jurulatih KV skills',
	),
	CardList(
		imageLink: 'images/pn_masyi.jpeg',
		jawatan: 'Pensyarah',
		nama: 'Puan Masyiviranis Binti Mohd Zain',
		emel: '', 
		jawatanLain: 'Penyelaras Program IBM P-Tech',
	),
];

List<CardList> cardlistpng = [
	CardList(
		imageLink: 'images/png/pn_rohani.png',
		jawatan: 'Ketua Jabatan',
		nama: 'Pn Rohani Binti Karim',
		emel: '', jawatanLain: '',
	),
	CardList(
		imageLink: 'images/png/pn_norshidah.png',
		jawatan: 'Ketua Program',
		nama: 'Ts Norshidah Binti Hashim',
		emel: '', jawatanLain: '',
	),
	CardList(
		imageLink: 'images/png/pn_rohaya.png',
		jawatan: 'Penolong Ketua Program',
		nama: 'Pn Rohaya Binti Abu Samah',
		emel: '', jawatanLain: '',
	),
	CardList(
		imageLink: 'images/png/pn_intan.png',
		jawatan: 'Setiausaha Program',
		nama: 'Pn Intan Keristina Binti Mohd Yusop',
		emel: '', jawatanLain: 'Penyelaras PTA',
	),
	CardList(
		imageLink: 'images/png/pn_azira.png',
		jawatan: 'Pensyarah',
		nama: 'Pn Siti Azira Binti Mohd Zain',
		emel: '', jawatanLain: 'Penyelaras OJT',
	),
	CardList(
		imageLink: 'images/png/pn_solehah.png',
		jawatan: 'Pensyarah ',
		nama: 'Puan Siti Solehah Nurr Azmi Binti ',
		emel: '', jawatanLain: 'Penyelaras MBOT',
	),
	CardList(
		imageLink: 'images/png/pn_elyani.png',
		jawatan: 'Pensyarah',
		nama: 'Pn Nurelyani Binti Azmi',
		emel: '', jawatanLain: 'Penyelaras Svm/Jpk',
	),
	CardList(
		imageLink: 'images/png/pn_ilham.png',
		jawatan: 'Pensyarah',
		nama: 'Pn Ilham Karim Binti Mat Rof',
		emel: '', jawatanLain: 'Penyelaras Program IBM P-Tech',
	),
	CardList(
		imageLink: 'images/png/pn_farah.png',
		jawatan: 'Pensyarah',
		nama: 'Pn Farah Afiqah Binti Borhannudin',
		emel: '', jawatanLain: 'Penyelaras School Enterprise',
	),
	CardList(
		imageLink: 'images/png/pn_diyana.png',
		jawatan: 'Pensyarah',
		nama: 'Puan Nurdiyana Binti Mohammad Shukri',
		emel: '', jawatanLain: 'Jurulatih KV skills',
	),
	CardList(
		imageLink: 'images/png/pn_masyi.png',
		jawatan: 'Pensyarah',
		nama: 'Puan Masyiviranis Binti Mohd Zain',
		emel: '', 
		jawatanLain: 'Penyelaras Program IBM P-Tech',
	),
];

class CardList{
	String imageLink;
	String jawatan;
	String nama;
	String emel;
	String jawatanLain;
	CardList({required this.imageLink,required this.jawatan,required this.nama,required this.emel,required this.jawatanLain});
}
