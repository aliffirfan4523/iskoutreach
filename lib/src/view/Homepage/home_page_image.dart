import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePageImage extends StatelessWidget {
  HomePageImage({super.key});

  @override
  Widget build(BuildContext context) {

  	final List<String> homepageimglist = [
		  'assets/images/homepage/1.jpg',
		  'assets/images/homepage/2.jpg',
		  'assets/images/homepage/3.jpg',
		  'assets/images/homepage/4.jpeg',
		  'assets/images/homepage/5.jpg',
		  'assets/images/homepage/6.jpg',
		  'assets/images/homepage/7.jpg',
		  'assets/images/homepage/8.jpeg',
		  'assets/images/homepage/9.jpeg',
		  'assets/images/homepage/10.jpeg',
		  'assets/images/homepage/11.jpeg',
		  //'assets/images/homepage/12.jpg',
		];

		final List<Widget> homepageimageslider = homepageimglist.map(
		  (item) => Container(
		    child: Container(
		      margin: const EdgeInsets.all(5.0),
		      child: ClipRRect(
		        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
		        child: Stack(
		          children: <Widget>[
		            Center(
		              child: Container(
		                decoration: BoxDecoration(
		                  image: DecorationImage(
		                    image: AssetImage(item), fit: BoxFit.fitWidth
		                  ),
		                )
		              )
		            ),
		          ],
		        )
		      ),
		    ),
		  )
		).toList();

  	return Swiper(
  		loop: true,
  		itemCount: homepageimglist.length,
  		itemBuilder: (BuildContext context, int index) => Image.asset(
  			homepageimglist[index],
  			fit: BoxFit.cover,
  		),
  		autoplay: true,
  	);
  }
}