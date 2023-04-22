import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../model/senarai_subjek_model.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_bottom_bar.dart';
import '../widget/side_drawer.dart';


class SenaraiKursus extends StatefulWidget {
  const SenaraiKursus({super.key});

  @override
  State<SenaraiKursus> createState() => _SenaraiKursusState();
}

class _SenaraiKursusState extends State<SenaraiKursus> {
  int selectedTileSvm = -1;
  int selectedTileDvm = -1;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: sideDrawer(isEndDrawer: true),
        appBar: CustomAppBar(
            title: tr("senarai_kursus.senarai_kursus_title"),
            icon: Icons.subject_rounded,
            heroTag: 'senarai_kursus_ditawarkan',
            ),
        bottomNavigationBar: BottomBar(
          currentPage: 2, 
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top:20, bottom: 20),
                width: MediaQuery.of(context).size.width-40,
                child: Text(
                  tr("senarai_kursus.senarai_kursus_desc"),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  tr("senarai_kursus.svm.svm_title"),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                  key: Key(selectedTileSvm.toString()),                  
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: senaraiSubjekSvm.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return _buildPlayerModelList(
                      isSvm: false,
                      index: index,
                      tahun: tr("senarai_kursus.svm.sem_${index+1}.sem_${index+1}_title"),
                      subjek: "senarai_kursus.svm.sem_${index+1}.sem_${index+1}_",
                      tilesquantity: 3
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  tr("senarai_kursus.dvm.dvm_title"),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                  key: Key(selectedTileDvm.toString()),                  
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return _buildPlayerModelList(
                      isSvm: false,
                      index: index,
                      tahun: tr("senarai_kursus.dvm.sem_${index+1}.sem_${index+1}_title"),
                      subjek: "senarai_kursus.dvm.sem_${index+1}.sem_${index+1}_",
                      tilesquantity: 10
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlayerModelList({
    required bool isSvm,
    required int index, 
    required String tahun, 
    required String subjek,
    required int tilesquantity

    }) {
    int currentInt = isSvm ? selectedTileSvm : selectedTileDvm;
    return Card(
      child: ExpansionTile(
        onExpansionChanged: ((newState) {
          if (newState) {
            if(isSvm){
              setState(() {
              currentInt = index;
              });
            } 
          }
        }),
        key: Key(index.toString()),
        initiallyExpanded: index == currentInt,
        title: Text(
          tahun,
          style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
        ),
        children: [
          Builder(
            builder: (BuildContext context) {
              return ListView.builder(
                itemCount: tilesquantity,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      tr("$subjek${index+1}"),
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}