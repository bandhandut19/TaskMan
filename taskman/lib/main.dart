import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskman/screens/home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // clearing top transparent banner
    SystemChrome.setSystemUIOverlayStyle(

        // ignore: prefer_const_constructors
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaskMan',
      home: homePage(),
    );
  }
}
