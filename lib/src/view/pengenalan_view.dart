import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'widget/custom_appbar.dart';

class Pengenalan extends StatelessWidget {
  const Pengenalan({super.key});

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
          children: <Widget>[],
        )),
      ),
    );
  }
}
