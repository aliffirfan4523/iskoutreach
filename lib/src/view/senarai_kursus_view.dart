import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/senarai_subjek_model.dart';
import 'widget/custom_appbar.dart';

class SenaraiKursus extends StatelessWidget {
  const SenaraiKursus({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();

    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
            context: context,
            title: "Senarai Kursus",
            icon: Icons.menu,
            controller: controller,
            heroTag: 'senarai_kursus'),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return _buildPlayerModelList(
                    svm[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayerModelList(Map<String, List<String>> senaraiSubjek) {
    return Card(
      child: ExpansionTile(
        title: Text(
          senaraiSubjek,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          ListTile(
            title: Text(
              items.description,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
