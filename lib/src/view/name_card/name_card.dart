import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iskoutreach/src/controller/theme_controller.dart';

import '../../controller/Side_Menu_Controller.dart';
import '../../model/card_model.dart';
import '../../model/tile_model.dart';

class NameCard extends StatelessWidget {
	final List<Map> myProducts =
      List.generate(100, (index) => {"id": index, "name": "Product $index"})
          .toList();

	@override
	Widget build(BuildContext context) {
		final orientation = MediaQuery.of(context).orientation;
		return Scaffold(
		  body: Column(
		  	children: [
		  		Padding(
		  			padding: const EdgeInsets.all(20),
		  			child: Row(
		  				mainAxisAlignment: MainAxisAlignment.spaceBetween,
		  				children: [
		  				IconButton(
		  					icon: const Icon(Icons.menu_rounded),
		  					iconSize: 30,
		  					onPressed: () {
                ToggleMenu();
		  						},
		  					),
		  				],
		  				),
		  			),
		  		const SizedBox(height: 10),
		  		Expanded(
		  		  child: GridView.builder(
		  		  	gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
		  		  		crossAxisCount: 2,
		  		  		mainAxisSpacing: 40,
		  		  		crossAxisSpacing: 30,
		  		  	),
		  		  	padding: EdgeInsets.all(20),
		  		  	scrollDirection: Axis.vertical,
		  		  	shrinkWrap: true,
		  		  	itemCount: 16,
		  		  	itemBuilder: (BuildContext ctx, index) {
		  		  		return Card(
		  		  			shape: RoundedRectangleBorder(  
				            borderRadius: BorderRadius.circular(15.0),  
				          ),
		  		  			color: mainColor,
		  		  			elevation: 10,
		  		  			child: Column(
		  		  				mainAxisAlignment: MainAxisAlignment.center,
		  		  				mainAxisSize: MainAxisSize.min,
		  		  				children: [
		  		  					Image.asset(
		  		  						card[1].image,
		  		  						height: 60,
		  		  						width: 60,
		  		  					),
		  		  					Text(card[1].name, 
		  		  						style: TextStyle(
		  		  							color: Colors.white, 
		  		  							fontSize: 13, 
		  		  							fontWeight: FontWeight.bold
		  		  							),
		  		  						),

		  		  				],
		  		  			),
		  		  		);
		  		  	}
		  		  ),
		  		),
		  	],
		  ),
		);
	}
}