import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Color.blue,
      ),
      home: IskHomePage(),
    );
  }
}

class IskHomePage extends StatefulWidget {
  @override
  _IskHomePageState createState() => _IskHomePageState();
}

class _IskHomePageState extends State<IskHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
    //TODO
    );
  }
}
