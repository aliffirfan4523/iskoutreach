import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'widget/custom_appbar.dart';

class EtikaPemakaian extends StatelessWidget {
  EtikaPemakaian({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
			child: Scaffold(
      	appBar: customAppBar(
      		context: context,
      		title: "Etika Pemakaian",
      		icon: FontAwesome5.tshirt,
      		heroTag: 'etika_pemakaian'
        ),
	  	),
    );
  }
}