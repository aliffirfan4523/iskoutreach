import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../model/card_model.dart';
import '../widget/custom_appbar.dart';

class NameCard extends StatefulWidget {
  @override
  State<NameCard> createState() => _NameCardState();
}

class _NameCardState extends State<NameCard> {

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final _controller = ScrollController();

    return Scaffold(
      appBar: customAppBar(
        context: context, 
        title: "Senarai Pensyarah", 
        icon: Icons.person_rounded,
        controller: _controller,
        heroTag: 'senarai_pensyarah'
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 300,
            child: Swiper(
              itemBuilder: (context, index) {
                return cardlistpng[index];
              },
              autoplayDisableOnInteraction: true,
              itemWidth: 500,
              itemHeight: 600.0,
              viewportFraction: 0.8,
              scale: 0.5,
              autoplay: true,
              itemCount: cardlistpng.length,
              control: const SwiperControl(),
              pagination: SwiperPagination(),
            ),
          ),
        ],
      ),
    );
  }
}