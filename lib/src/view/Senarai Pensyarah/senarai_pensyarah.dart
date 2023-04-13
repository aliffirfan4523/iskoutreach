import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../model/card_model.dart';
import '../widget/Unordered_List.dart';
import '../widget/custom_appbar.dart';

class SenaraiPensyarah extends StatefulWidget {
  @override
  State<SenaraiPensyarah> createState() => _SenaraiPensyarahState();
}

class _SenaraiPensyarahState extends State<SenaraiPensyarah> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final _controller = ScrollController();

    return Scaffold(
      appBar: customAppBar(
          context: context,
          title: "Senarai Pensyarah",
          icon: Icons.person_rounded,
          heroTag: 'senarai_pensyarah'),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          UnorderedListItem(
            bottom: 20,
            left: 20,
            right: 20,
            text:
                "Terdapat 11 orang tenaga pengajar yang berpengalaman dan berdedikasi yang akan membantu pelajar dalam proses pembelajaran. ",
            top: 25,
          ),
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