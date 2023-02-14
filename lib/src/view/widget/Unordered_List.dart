import 'package:flutter/material.dart';

class UnorderedListItem extends StatelessWidget {
  UnorderedListItem(
      {super.key,
      required this.top,
      required this.left,
      required this.right,
      required this.bottom,
      required this.text});

  final String text;
  double top = 5;
  double left = 20;
  double right = 20;
  double bottom = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.only(left: left, right: right, bottom: bottom, top: top),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("•  "),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 14),
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ));
  }
}
