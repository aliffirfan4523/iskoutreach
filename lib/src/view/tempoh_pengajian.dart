import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'widget/custom_appbar.dart';

class TempohPengajian extends StatelessWidget {
  const TempohPengajian({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(context: context,title: "Senarai Kursus", icon: Icons.menu),
        body: SafeArea(
            child: Column(
          children: [
          ],
        )),
      ),
    );
  }
}
