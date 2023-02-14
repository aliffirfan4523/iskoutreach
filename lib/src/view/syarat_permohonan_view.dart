import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'widget/custom_appbar.dart';

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
          heroTag: 'syarat_permohonan'
        ),
	  	),
    );
  }
}