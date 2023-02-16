import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/text_model.dart';
import 'widget/Unordered_List.dart';
import 'widget/custom_appbar.dart';

class KerjasamaIBM extends StatelessWidget {
	KerjasamaIBM({super.key});

	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				appBar: customAppBar(
					context: context,
					title: "Program IBM-PTech",
					icon: FontAwesome5.handshake,
					heroTag: 'kerjasama_ibm'),
				body: SingleChildScrollView(
					child: Column(
						// ignore: prefer_const_literals_to_create_immutables
						children: <Widget>[
						const SizedBox(
							height: 40,
							),
						const Align(
							alignment: Alignment.center,
							child: Padding(
							  padding: EdgeInsets.only(left:20.0,right:20.0),
							  child: Text(
							  	"Program kerjasama IBM-PTech antara IBM dan Kolej Vokasional Sungai Buloh",
						  	),
							),
						),
						const SizedBox(
							height: 40,
							),
						Text(
							'Sinopsis',
							style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w200),
							),
						Padding(
							padding: EdgeInsets.all(20),
							child: Text(
								ibm,
								style: TextStyle(
									fontSize: 13,
								),
							),
						),
						SizedBox(height: 20,),
						Text(
							'Carta Organisasi',
							style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w200),
						),
		        Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 180,
                  child: Image.asset(
                    'assets/images/jpeg/carta.jpeg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
						],
					)
				),
			),
		);
	}
}

