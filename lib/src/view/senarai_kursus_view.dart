import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/senarai_subjek_model.dart';
import 'widget/custom_appbar.dart';

class SenaraiKursus extends StatefulWidget {
  const SenaraiKursus({super.key});

  @override
  State<SenaraiKursus> createState() => _SenaraiKursusState();
}

class _SenaraiKursusState extends State<SenaraiKursus> {
  int selectedTileSvm = -1;
  int selectedTileDvm = -1;


  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();

    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
            context: context,
            title: "Senarai Kursus",
            icon: Icons.subject_rounded,
            heroTag: 'senarai_kursus_ditawarkan'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top:20, bottom: 20),
                width: MediaQuery.of(context).size.width-40,
                child: Text(
                  "Berikut adalah senarai subjek yang ditawarkan bagi Sijil Vokasional Malaysia (SVM) dan Diploma Vokasional Malaysia (DVM) kursus teknologi sistem komputer dan rangkaian.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Senarai subjek yang ditawarkan bagi Sijil Vokasional Malaysia",
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
                      isSvm: true,
                      index: index,
                      tahun: senaraiSubjekSvm[index].tahun,
                      subjek: senaraiSubjekSvm[index].subjek,
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Senarai subjek yang ditawarkan bagi Diploma Vokasional Malaysia",
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
                  itemCount: senaraiSubjekDvm.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return _buildPlayerModelList(
                      isSvm: false,
                      index: index,
                      tahun: senaraiSubjekDvm[index].tahun,
                      subjek: senaraiSubjekDvm[index].subjek,
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

  Widget _buildPlayerModelList({required bool isSvm, required int index, required String tahun, required List<String> subjek}) {
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
                itemCount: subjek.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      subjek[index],
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