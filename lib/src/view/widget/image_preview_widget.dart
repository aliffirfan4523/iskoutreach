import 'package:flutter/material.dart';

import '../image_hero_animation.dart';

class ImagePreview extends StatelessWidget {
  ImagePreview({
    Key? key,
    required this.width,
    required this.imageLink,
    required this.heroTag
  }) : super(key: key);

  final String heroTag;
  final double width;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> showSecondPage(
        context: context, 
        imageLink: imageLink,
        heroTag: heroTag,
        ),
      child: Center(
        child: Hero(
          tag: heroTag,
          child: Image.asset(
            imageLink,
            width: MediaQuery.of(context).size.width-60,
          ),
        ),
      ),
    );
  }
}
