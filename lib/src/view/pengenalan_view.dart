import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:iskoutreach/src/view/widget/side_nav_bar.dart';

import 'widget/Unordered_List.dart';
import 'widget/custom_appbar.dart';

class Pengenalan extends StatelessWidget {
  Pengenalan({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
            context: context,
            title: "Pengenalan",
            icon: FontAwesome5.desktop,
            heroTag: 'syarat_permohonan'),
        endDrawer: sideDrawer(),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.menu),onPressed: (){Scaffold.of(context).openEndDrawer();},),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            //penerangan program
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Program Teknologi Sistem Komputer & Rangkaian menyediakan pelajar kepada asas perniagaan, penyelenggaraan, pengoperasian dan konfigurasi komputer serta rangkaian dan penyimpanan data disamping pengurusan pentadbiran dan integrasi maklumat.",
              top: 40,
            ),
            //penerangan bidang pengajian
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Program ini menawarkan 2 peringkat bidang pengajian iaitu Sijil Vokasional Malaysia (SVM) dan Diploma Vokasional Malaysia (DVM)",
              top: 30,
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Bagi lepasan Tingkatan 3, anda boleh mengikuti pengajian untuk mendapatkan Sijil Vokasional Malaysia (SVM) sebelum melanjutkan pengajian di peringkat DVM.",
              top: 10,
            ),
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Murid yang berjaya di peringkat Sijil akan dianugerahkan Sijil Vokasional Malaysia (SVM) dan layak menyambung pengajian di peringkat Diploma di Kolej Vokasional yang sama jika melepasi syarat kemasukan yang ditetapkan",
              top: 10,
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
            //Peluang kerjaya
            UnorderedListItem(
              bottom: 5,
              left: 20,
              right: 20,
              text:
                "Peluang Kerjaya:",
              top: 30,
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
          ],
        )),
      ),
    );
  }
}
