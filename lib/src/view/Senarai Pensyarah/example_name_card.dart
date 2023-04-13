import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';


class ExNameCard extends StatefulWidget {
  @override
  _ExNameCardState createState() => _ExNameCardState();
}

class _ExNameCardState extends State<ExNameCard> {
  final List<String> _images = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.png",
    "images/9.jpg",
    "images/10.jpg",
    "images/11.jpg",
    
    // ...
  ];
  int _selectedIndex = -1;
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Grid View'),
      ),
      body: Stack(
        children: <Widget>[
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return Hero(
                tag: _images[index],
                child: Material(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Image.asset(
                      _images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
          _selectedIndex != -1
              ? Positioned.fill(
                  child: Container(
                    color: Colors.transparent,
                    child: PhotoView(
                      onTapUp: (context, details, controllerValue) {
                        setState(() {
                          _selectedIndex = -1;
                        });
                      },
                      backgroundDecoration: BoxDecoration(
                        color: Colors.grey[900]?.withOpacity(0.5),
                      ),
                      minScale: PhotoViewComputedScale.contained * 0.8,
                      maxScale: PhotoViewComputedScale.covered * 1.8,
                      imageProvider: AssetImage(_images[_selectedIndex]),
                      heroAttributes: PhotoViewHeroAttributes(tag: _images[_selectedIndex]),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
 

