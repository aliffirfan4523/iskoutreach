  import 'package:flutter/material.dart';

Widget nightBackground(){
    return Stack(
      children: [
        Positioned(
          right:   85,
          top:  15,
          child: Icon(Icons.dark_mode, size: 50)
        ),
        Positioned(
          right: 120  ,
          top:  15,
          child: Icon(Icons.cloud_rounded, size: 50, color: Colors.grey[600],)
        ),
        Positioned(
          right: 155  ,
          top:  15,
          child: Icon(Icons.cloud_rounded, size: 50, color: Colors.grey[400],)
        ),
        Positioned(
          right:   45,
          top:  15,
          child: Icon(Icons.cloud_rounded, size: 50, color: Colors.grey[500],)
        ),
        Positioned(
          right:   10,
          top:  15,
          child: Icon(Icons.cloud_rounded, size: 50, color: Colors.grey[300],)
        ),
      ],
    );
  }
  Widget morningBackground(){
    return Stack(
      children: [
        Positioned(
          right:   85,
          top:  15,
          child: Icon(Icons.light_mode, size: 50, color: Colors.orange,)
        ),
        Positioned(
          right: 120  ,
          top:  15,
          child: Icon(Icons.cloud_rounded, size: 50, color: Colors.white,)
        ),
        Positioned(
          right: 155  ,
          top:  15,
          child: Icon(Icons.cloud_rounded, size: 50, color: Colors.white70,)
        ),
        Positioned(
          right:   45,
          top:  15,
          child: Icon(Icons.cloud_rounded, size: 50, color: Colors.white54,)
        ),
        Positioned(
          right:   10,
          top:  15,
          child: Icon(Icons.cloud_rounded, size: 50, color: Colors.white,)
        ),
      ],
    );
  }