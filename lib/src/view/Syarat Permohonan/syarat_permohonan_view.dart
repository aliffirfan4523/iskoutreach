import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:iskoutreach/src/view/widget/Unordered_List.dart';

import '../widget/custom_appbar.dart';


class SyaratPermohonan extends StatelessWidget {
  const SyaratPermohonan({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
            context: context,
            title: "Syarat Permohonan",
            icon: FontAwesome5.question_circle,
            heroTag: 'syarat_permohonan'),
        body: SingleChildScrollView(
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Syarat permohonan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Sijil Vokasional Malaysia (SVM)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            ListView.builder(
              itemCount: syaratSvm.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return syaratSvm[index];
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Syarat menyambung",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Diploma Vokasional Malaysia (DVM)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            ListView.builder(
              itemCount: syaratDvm.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return syaratDvm[index];
              },
            ),
            SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Maklumat Tambahan:-",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                  "Bagi lepasan Tingkatan 3, anda boleh mengikuti pengajian untuk mendapatkan Sijil Vokasional Malaysia (SVM) sebelum melanjutkan pengajian di peringkat DVM.",
              top: 30,
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                  "Murid yang berjaya di peringkat Sijil akan dianugerahkan:-",
              top: 10,
            ),
            NumberedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text: " Sijil Vokasional Malaysia (SVM)",
              top: 5,
              number: 1,
            ),
            NumberedListItem(
              bottom: 10,
              left: 20,
              right: 20,
              text:
                  "Layak menyambung pengajian di peringkat Diploma di Kolej Vokasional yang sama jika melepasi syarat kemasukan yang ditetapkan",
              top: 5,
              number: 2,
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                  "Murid yang tidak melepasi syarat kemasukan ke peringkat Diploma akan menyambung pengajian di Kolej Vokasional yang sama dalam bidang kemahiran dan dianugerahkan Sijil Kemahiran Malaysia (SKM) berdasarkan tahap kompetensi yang dicapai",
              top: 10,
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                  "Murid yang lulus pengajian di peringkat Diploma akan dianugerahkan Diploma oleh Senat Kolej Vokasional, Kementerian Pendidikan Malaysia",
              top: 10,
            ),
            SizedBox(height: 30)
          ],
        )),
      ),
    );
  }
}

List<UnorderedListItem> syaratSvm = [
  UnorderedListItem(
    bottom: 5,
    left: 20,
    right: 20,
    text: "Warganegara Malaysia",
    top: 20,
  ),
  UnorderedListItem(
    bottom: 5,
    left: 20,
    right: 20,
    text: "Bersekolah di SMK atau Sekolah Bantuan Kerajaan",
    top: 5,
  ),
  UnorderedListItem(
    bottom: 5,
    left: 20,
    right: 20,
    text:
        "Memohon secara online dan menduduki PKSK (Pentaksiran Kemasukan Sekolah Khusus)",
    top: 5,
  ),
  UnorderedListItem(
    bottom: 5,
    left: 20,
    right: 20,
    text: "Memperoleh markah PBD, PAJSK dan Pentaksiran Psikometrik",
    top: 5,
  ),
  UnorderedListItem(
    bottom: 5,
    left: 20,
    right: 20,
    text: "Tidak rabun / buta warna",
    top: 5,
  ),
  UnorderedListItem(
    bottom: 5,
    left: 20,
    right: 20,
    text: "Bebas sakit kronik",
    top: 5,
  ),
  UnorderedListItem(
    bottom: 20,
    left: 20,
    right: 20,
    text: "Berminat dengan program dipohon",
    top: 5,
  ),
];

List<UnorderedListItem> syaratDvm = [
  UnorderedListItem(
    bottom: 5,
    left: 20,
    right: 20,
    text:
        "Lulus Sijil Vokasional Malaysia dan mendapat sekurang-kurangnya 3 kepujian termasuk Kepujian Bahasa Melayu 1104",
    top: 20,
  ),
  UnorderedListItem(
    bottom: 5,
    left: 20,
    right: 20,
    text:
        "Mencapai kepujian kursus Matematik setara Gred 2.0 di peringkat Sijil Vokasional Malaysia",
    top: 5,
  ),
  UnorderedListItem(
    bottom: 30,
    left: 20,
    right: 20,
    text:
        "Menduduki modul tambahan kursus Matematik yang telah ditetapkan bagi pelajar yang tidak mencapai setara Gred 2.0",
    top: 5,
  ),
];
