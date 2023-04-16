import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Widget nextPage;
  final Widget previousPage;
  final bool isNextPageExist;
  final bool isPrevPageExist;

  BottomBar({
    required this.currentPage,
    required this.totalPages,
    required this.nextPage,
    required this.previousPage, 
    required this.isNextPageExist, 
    required this.isPrevPageExist,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          isPrevPageExist ? IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => previousPage),
              );
            },
            disabledColor: currentPage == 1 ? Colors.grey : Colors.blue,
          ) : Container(),
          Text("$currentPage of $totalPages"),
          isNextPageExist ? IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => nextPage),
              );
            },
            disabledColor: currentPage == totalPages ? Colors.grey : Colors.blue,
          ): Container(),
        ],
      ),
    );
  }
}
