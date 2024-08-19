import 'package:card_swiper/card_swiper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../model/card_model.dart';
import '../widget/Unordered_List.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_bottom_bar.dart';
import '../widget/side_drawer.dart';

class SenaraiPensyarah extends StatefulWidget {
  @override
  State<SenaraiPensyarah> createState() => _SenaraiPensyarahState();
}

class _SenaraiPensyarahState extends State<SenaraiPensyarah> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final _controller = ScrollController();
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: sideDrawer(isEndDrawer: true),
        appBar: CustomAppBar(
          title: tr("senarai_pensyarah.senarai_pensyarah_title"),
          icon: Icons.person_rounded,
          heroTag: 'senarai_pensyarah',
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            UnorderedListItem(
              bottom: 20,
              left: 20,
              right: 20,
              text: tr("senarai_pensyarah.senarai_pensyarah_description"),
              top: 25,
            ),
            SizedBox(height: 60),
            SizedBox(
              height: 300,
              child: Swiper(
                itemBuilder: (context, index) {
                  //return cardlistpng[index];
                  if (context.locale.languageCode == 'en') {
                    return cardlisten[index];
                  } else {
                    return cardlistms[index];
                  }
                },
                autoplayDisableOnInteraction: true,
                itemWidth: 500,
                itemHeight: 600.0,
                viewportFraction: 0.8,
                scale: 0.5,
                autoplay: true,
                itemCount: cardlistms.length,
                control: const SwiperControl(),
                pagination: SwiperPagination(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
