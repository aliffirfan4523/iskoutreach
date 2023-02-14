import 'package:flutter/material.dart';

class RoundShapeBackground extends StatelessWidget {
  RoundShapeBackground({
    Key? key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    this.size,
  }) : super(key: key);

  double? top;
  double? left;
  double? right;
  double? bottom;
  double? size = 150;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(300),
          backgroundBlendMode: BlendMode.overlay,
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xBF00FFF0),
                Color(0xBF000000),
              ]),
        ),
      ),
    );
  }
}
