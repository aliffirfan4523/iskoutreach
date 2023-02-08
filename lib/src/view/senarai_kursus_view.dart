import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'widget/custom_appbar.dart';

class SenaraiKursus extends StatelessWidget {
  const SenaraiKursus({super.key});

  @override
  Widget build(BuildContext context) {
  ScrollController _controller = ScrollController();

    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
          context: context,
          title: "Senarai Kursus", 
          icon: Icons.menu, 
          controller: _controller,
          heroTag: 'senarai_kursus'
        ),
        body: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
